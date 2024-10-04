open Batteries
open Option
open List
open Language
open Logic

(* At the moment, we simulate AND with having a list of assertion, understood to be in conjunction. *)

let getLastAssertions (l : (proof list)) : assertions = proof_getPost (List.hd l)

let track_failed_premise (a : assertion) (msg : string) = map_of_failures := (a,msg) :: !map_of_failures

let makeInductives (g : grammarLine) (metavar : string) : assertions = 
	match g with GrammarLine(_,option_var,option_ts) -> 
		if is_none option_var || not(get option_var = metavar) then [] (* else [  NodeIteGr (a,g,a,[])  ] *)
		else let var = get option_var in let ts = get option_ts in 
		let pairConstrAndPositions t = (term_getCNAME t) , term_argsIdxEqualsTo t metavar in 
		  List.map (makeInductiveAssertion metavar) (List.map pairConstrAndPositions ts) 
(*		let makeOneProof pair = NodeGr(a,g,makeInductiveAssertion metavar pair :: a) in 
		   List.map makeOneProof (List.map pairConstrAndPositions ts) 
*)		

let makeErrors (g : grammarLine) : assertions = 
	match g with GrammarLine(catname,_,option_ts) -> 
		if is_none option_ts || not(catname = "Error") then [] (* else [  NodeIteGr (a,g,a,[])  ] *)
		else let ts = get option_ts in 
		  List.map makeErrorAssertion (List.map term_getCNAME ts) 

let args_of_source (r : rule) = term_getArguments (rule_getInputOfConclusion r) 
let stateSource (f : formula) = List.nth (formula_getArguments f) 1 
let lastOutput f = List.last (formula_getArguments f) 
let reduction_has_state r = List.length (formula_getArguments (rule_getConclusion r)) > 2
let stateTarget f = lastOutput f 
let outputBeforeState r = List.nth (formula_getArguments (rule_getConclusion r)) 2


let makeCtx (r : rule) (pre : assertions) : proof = 
	if rule_isPredname "step" r && term_isConstr (rule_getInputOfConclusion r) 
	then 
		let filtered_args = List.filteri (fun i arg -> 
		((is_value arg || is_error arg) && List.mem (i+1) (assertion_getInductiveIdxs pre (rule_getInputOfConclusion r) "C")) || (not(is_value arg) && not(is_error arg))
											 )
											 (args_of_source r) in 
		if (args_of_source r) = filtered_args								 
		then NodeRule(pre, r, Ctx(rule_getRulename r) :: pre, "ctxCompliant") 
	    else let _ = track_failed_premise (Ctx(rule_getRulename r)) (msgCtxCompliant r (list_difference (args_of_source r) filtered_args)) in NodeRule(pre, r, pre, "neutral")
	else NodeRule(pre, r, pre, "neutral")

let makeErr (r : rule) (pre : assertions) : proof = 
	if rule_isPredname "step" r && term_isConstr (rule_getInputOfConclusion r) 
	then 
		let filtered_args = List.filteri (fun i arg -> 
			(is_error arg && not(List.mem (i+1) (assertion_getInductiveIdxs pre (rule_getInputOfConclusion r) "F"))) || (not(is_error arg))
												 )
												 (args_of_source r) in 
		if (args_of_source r) = filtered_args								 
		then 
			let opAndIdx_list_unfiltered = List.mapi (fun i arg -> if is_error arg then term_getCNAME (rule_getInputOfConclusion r), i+1 else ("",-100)) (args_of_source r) in 
			let opAndIdx_list = List.filter (fun pair -> snd pair >= 0) opAndIdx_list_unfiltered in   
			if opAndIdx_list = [] then NodeRule(pre, r, pre, "neutral") else let (c,i) = List.hd opAndIdx_list in NodeRule(pre, r, HandlesError(c,i) :: pre, "error-handler")
		else 
			let opAndIdx_list_unfiltered = List.mapi (fun i arg -> if is_error arg && not(List.mem arg filtered_args) then term_getCNAME (rule_getInputOfConclusion r), i+1 else ("",-100)) (args_of_source r) in 
			let opAndIdx_list = List.filter (fun pair -> snd pair >= 0) opAndIdx_list_unfiltered in 
			let _ = List.map (fun (c,i) -> track_failed_premise (HandlesError(c,i)) (msgHandlesError c i)) opAndIdx_list in NodeRule(pre, r, pre, "neutral")
	else NodeRule(pre, r, pre, "neutral")


let makeEff (r : rule) (pre : assertions) : proof = 
	if rule_isPredname "step" r && not(stateSource (rule_getConclusion r) = stateTarget (rule_getConclusion r)) then NodeRule(pre, r, Effectful :: pre, "effectful")
	else NodeRule(pre, r, pre, "neutral")

let makeNoDupli (r : rule) (pre : assertions) : proof = 
	if rule_isPredname "step" r 
	then (if (List.for_all is_value (args_of_source r)) 
		 then NodeRule(pre, r, NoDupli(rule_getRulename r) :: pre, "effectual") 
		 else (if term_isSubstitution (outputBeforeState r) 
			  then let _ = track_failed_premise (NoDupli(rule_getRulename r)) (msgNoDupli r (outputBeforeState r)) in NodeRule(pre, r, pre, "neutral")
			  else NodeRule(pre, r, NoDupli(rule_getRulename r) :: pre, "effectual")
			  )
		  ) 	
	else NodeRule(pre, r, pre, "neutral")

let makeContra (r : rule) (pre : assertions) : proof = 
	let left = (rule_getInputOfConclusion r) in 
	let right = (rule_getOutputOfConclusion r) in 
	if rule_isPredname "subtype" r && term_isConstr left && term_isConstr right then 
	(* These pairs are intentionally right - left to create a contravariant formula *)
	let formulaeToSearch = List.map makeSubtypeByPair (List.combine (term_getArguments right) (term_getArguments left)) in 
	let contraPositions = List.filter (fun i -> i >= 0) (List.mapi (fun i f -> if List.mem f (rule_getPremises r) then i+1 else -100) formulaeToSearch)
	in NodeRule(pre, r, Contra(term_getCNAME left, contraPositions) :: pre, "contra")
	else NodeRule(pre, r, pre, "neutral")

let makeInvariant (r : rule) (pre : assertions) : proof = 
	let left = (rule_getInputOfConclusion r) in 
	let right = (rule_getOutputOfConclusion r) in 
	if rule_isPredname "subtype" r && term_isConstr left && term_isConstr right then 
	let varsLeft = term_getVariables (rule_getInputOfConclusion r) in 
	let varsRight = term_getVariables (rule_getOutputOfConclusion r) in 
	let pairLeftAndRight = List.combine varsLeft varsRight in 
	let invariantPositions = List.filter (fun i -> i >= 0) (List.mapi (fun i (a,b) -> if a = b then i+1 else -100) pairLeftAndRight) in 
    	NodeRule(pre, r, Invariant(term_getCNAME left, invariantPositions) :: pre, "invariant")
	else NodeRule(pre, r, pre, "neutral")
	
(* adds contraResp only for the c encountered in output types of premises *)
let makeContraResp (r : rule) (pre : assertions) : proof = 
	if rule_isPredname "typeOf" r then 	
	let outputsWithConstructor = List.filter term_isConstr (List.map lastOutput (rule_getTypingPremises r)) in 
	let vars_unfiltered = List.concat (List.map (fun t -> List.mapi (fun i arg -> if (assertion_checkContra pre (term_getCNAME t) i) then arg else BoundVar) (term_getArguments t)) outputsWithConstructor) in 
	let vars = List.filter term_isVar vars_unfiltered in
	let subtypingformulaeWithVarAsFirst = List.concat (List.map (fun var -> List.filter (fun f -> formula_getFirstArg f = var) (rule_getSubtypingPremises r)) vars) in 
	(* This below gets only the first c that has contravariant, should get all, or better, should see from the vars *)
	let c = assertion_getContraTypeConstructors pre in 
(*	if List.exists (fun var -> List.exists (fun f -> formula_getFirstArg f = var) (rule_getSubtypingPremises r)) vars then NodeRule(pre, r, pre, "neutral") *)
		if not(subtypingformulaeWithVarAsFirst = []) 
		then let _ = track_failed_premise (ContraResp(rule_getRulename r, c)) (msgContraResp r c subtypingformulaeWithVarAsFirst (rule_getTypingPremises r)) in NodeRule(pre, r, pre, "neutral")
		else NodeRule(pre, r, ContraResp(rule_getRulename r, c) :: pre, "contraResp")
	else NodeRule(pre, r, pre, "neutral")

let makeErrorAnyType (r : rule) (pre : assertions) : proof = 
	if rule_isPredname "typeOf" r then 	
	let varsInTypingPremises = List.concat (List.map term_getVariables (List.map lastOutput (rule_getPremises r))) in 
	let input = rule_getInputOfConclusion r in 
	let output = rule_getOutputOfConclusion r in 
	if term_isVar output && not(term_isVar input) && not(List.mem output varsInTypingPremises)
		then NodeRule(pre, r, ErrorAnyType(term_getCNAME input) :: pre, "ErrorAnyType")
		else NodeRule(pre, r, pre, "neutral")
	else NodeRule(pre, r, pre, "neutral")

let fill_with_all_operators (lan : language) (l : (proof list)) : proof list = 
	match List.hd l with NodeGr(pres,g,posts) -> 
	let buildInductiveIfMissing (cname1 : string) : assertions = if (List.filter (fun a -> match a with Inductive("C",(cname2, _)) -> cname1 = cname2 | _ -> false) posts) = [] then [makeInductiveAssertion "C" (cname1,[])] else [] in 
	let itemsAsOption = language_getGrammarItemsByCategoryButOnlyConstructED lan "Expression" in 
	let addedAssertions = if is_none itemsAsOption then [] else List.concat (List.map buildInductiveIfMissing (List.map term_getCNAME (get itemsAsOption))) in 
	NodeGr(pres,g,posts @ addedAssertions) :: l

(* last proof is always the first  *)
let prove_grammarLine (l : (proof list)) (g : grammarLine) : proof list = 
	let startingPre = getLastAssertions l in 
	match g with 
	| GrammarLine("Error",option_var,_) -> 	let errors = makeErrors g in NodeGr(startingPre,g,startingPre @ errors) :: l
	| GrammarLine(catname,option_var,_) -> 
	if is_none option_var || (  not(get option_var = "C") &&  not(get option_var = "F") &&  not(get option_var = "V") &&  not(get option_var = "T") ) then l 
	else 
	let inductives = makeInductives g (get option_var) in (* Here inductiveEs may be empty *)
	NodeGr(startingPre,g,startingPre @ inductives) :: l

	
let prove_rule (l : (proof list)) (r : rule) : (proof list) = 
	let startingPre = getLastAssertions l in 
	let ctxProof = makeCtx r startingPre in 
	let errorHandlerProof = makeErr r (proof_getPost ctxProof) in 
	let effProof = if reduction_has_state r then makeEff r (proof_getPost errorHandlerProof) else errorHandlerProof in 
	let noDupliProof = if reduction_has_state r then makeNoDupli r (proof_getPost effProof) else effProof in 
	let contraProof = makeContra r (proof_getPost noDupliProof) in 
	let contraRespProof = makeContraResp r (proof_getPost contraProof) in 
	let errorAnyProof = makeErrorAnyType r (proof_getPost contraRespProof) in 
	let invariantProof = makeInvariant r (proof_getPost errorAnyProof) in 
	let post = proof_getPost invariantProof in 
	let allProofAttempts = [ctxProof ; errorHandlerProof ; effProof ; noDupliProof ; contraProof ; contraRespProof ; errorAnyProof ; invariantProof] in 
	    makeIterateRuleProof startingPre r post allProofAttempts :: l

let prune_with_consequence_or_fail (pre : assertions) (lan : language) (post : assertion) (l : (proof list)) : proof option = 
	let lastAssertions = (getLastAssertions l) in 
	if List.mem post lastAssertions
		then let listProofs_with_fake = List.rev l in 
			 (* remember that we insert an initial fake proof to jump start fold_left *)
			 let listProofs = List.tl listProofs_with_fake in 
			 let lanProof = NodeLan(pre,lan,lastAssertions,listProofs) in 
			 let consequenceProof = NodeConsequence(pre,lan,[post],lanProof) in 
			 Some consequenceProof
		else None


let prove (pre : assertions) (lan : language) (post : assertion) : proof option = 
	let initialFakeProof = makeFakeInitialProof pre in 
	let listProofsAfterGrammar = fill_with_all_operators lan (List.fold_left prove_grammarLine [initialFakeProof] (language_getGrammar lan)) in 
	let listProofsAfterAll_but_reverse = List.fold_left prove_rule listProofsAfterGrammar (language_getRules lan) in 
	  prune_with_consequence_or_fail pre lan post listProofsAfterAll_but_reverse
(*
	let lastProof_for_fold = List.hd listProofsAfterGrammar in 	 
	let listProofsAfterAll_but_reverse = List.fold_left prove_rule [lastProof_for_fold] (language_getRules lan) in 

*)