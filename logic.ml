open Batteries
open Option
open List
open Language 

type proofname = string

type assertion = 
	| True
	| Inductive of id * (cname * (int list))
	| Ctx of rname 
	| HandlesError of opname * int 
	| Effectful
	| NoDupli of rname 
	| Contra of cname * (int list)
	| ContraResp of rname * cname 

type assertions = assertion list 

type proof = 
	| EmptyTree
	| NodeLan of assertions * language * assertions * (proof list)
	| NodeGr of assertions * grammarLine * assertions 
	| NodeRule of assertions * rule * assertions * proofname
	| NodeIteGr of assertions * grammarLine * assertions * (proof list)
	| NodeIteR of assertions * rule * assertions * (proof list)
	| NodeConsequence of assertions * language * assertions * proof


let makeFakeInitialProof (post : assertions) : proof = NodeGr([True],GrammarLine("",None,None),[True])

let makeInductiveAssertion (metavar : id) (idxs : (cname * (int list))) = Inductive(metavar, idxs)

let proof_getPost (p : proof) : assertions = match p with 
	| NodeGr(_,_,post) -> post
	| NodeRule (_,_,post,_) -> post
	| NodeIteGr (_,_,post,_) -> post
	| NodeIteR (_,_,post,_) -> post
	| EmptyTree -> []

let makeIterateGrProof (pre : assertions) (g : grammarLine) (post : assertions) (l : (proof list)) : proof = NodeIteGr(pre, g, post, l)
let makeIterateRuleProof (pre : assertions) (r : rule) (post : assertions) (l : (proof list)) : proof = NodeIteR(pre, r, post, l)

let assertion_isContra a = match a with Contra(_,_) -> true | _ -> false 
let assertion_inductiveFor a c id = match a with Inductive(metavar, (cname,_)) -> metavar = id && cname = c | _ -> false 
let contra_getCname (Contra(c,_)) = c
let contra_getIdxs (Contra(_,is)) = is
let inductive_getIdxs (Inductive(_,(_,is))) = is

let assertion_getInductiveIdxs (pre : assertions) (t : term) (metavar : string) : int list = 
	let assertionsRelevant = (List.filter (fun a -> assertion_inductiveFor a (term_getCNAME t) metavar) pre) in 
	  List.concat (List.map inductive_getIdxs assertionsRelevant) 
	
	
let assertion_checkContra (pre : assertions) (cname : string) (i : int) = 
	if [] = (List.filter (fun a -> assertion_isContra a && contra_getCname a = cname && List.mem i (contra_getIdxs a)) pre) then true else false 

let assertion_getContraTypeConstructors (pre : assertions) = "arrow"

let removeDuplicates(list') =
  let rec removeDuplicatesHelper(list) = match List.rev(list) with
  |[]->[]
  |head::tail -> if List.mem head tail then
                  removeDuplicatesHelper(List.rev(tail))
                 else [head]@removeDuplicatesHelper(List.rev(tail))
  in List.rev(removeDuplicatesHelper(list'));;

let wrap (s : string) : string = "{ " ^ s ^ " }"
let mydump l = if l = [] then "[]" else dump l

let print_assertion (a : assertion) : string = match a with
	| True -> "true"
	| Inductive(id,(c,is)) -> "Inductive(" ^ id ^ ", " ^ c ^ ", " ^ mydump(is) ^ ")" 
	| Ctx(rname) -> "CtxCompliant(" ^ rname ^ ")"  
	| HandlesError(op,i) -> "HandlesError(" ^ op ^ ", " ^ dump i ^ ")" 
	| Effectful -> "Effectful"
	| NoDupli(rname) -> "NoDupli(" ^ rname ^ ")"  
	| Contra(c,is) -> "Contra(" ^ c ^ ", " ^ mydump(is) ^ ")" 
	| ContraResp(rname,c) -> "ContraResp(" ^ rname ^ ", " ^ c ^ ")" 

let print_assertions (asserts : assertions) : string = String.concat " /\\ "(List.map print_assertion asserts)

let makeInferenceRule (premises : string) (conclusion : string) (logic_rule : string) : string = premises ^ "\n" ^ "---- " ^ logic_rule ^ "\n" ^ conclusion

let print_precondition (pre : assertions) = if List.length pre = 1 then wrap (print_assertions pre) else " preconditions "

let rec print_proof (p : proof) : string = 
	let makeStatement (pre : assertions) (subject : string) (post : assertions) : string = print_precondition pre ^ subject ^ wrap (print_assertions post) in 
	match p with
	| EmptyTree -> ""
	| NodeLan(pre, lan, post, proofs) -> let premises = print_proofs proofs in let conclusion = makeStatement pre " (G,I) " post in makeInferenceRule premises conclusion "(LAN)"
	| NodeGr(pre,g,post) -> print_precondition pre ^ " " ^ grammar_line_getCategory g ^ " " ^ wrap (print_assertions post)
	| NodeRule (pre,r,post,rulename) -> print_precondition pre ^ " " ^ rule_getRulename r ^ " " ^ wrap (print_assertions post)
	| NodeIteGr (pre,g,post,proofs) -> print_precondition pre ^ " (G,I) " ^ wrap (print_assertions post)
	| NodeIteR (pre,r,post,proofs) -> let premises = "" in let conclusion = makeStatement pre (" " ^ rule_getRulename r ^ " ") post in makeInferenceRule premises conclusion "(ITERATE)"
	| NodeConsequence(pre, lan, post, proof) -> let premises = print_proof proof in let conclusion = makeStatement pre " (G,I) " post in makeInferenceRule premises conclusion "(CONSEQUENCE)"
and print_proofs (proofs : proof list) : string = String.concat " \n\n " (List.map print_proof proofs)
