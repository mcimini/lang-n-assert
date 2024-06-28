open Batteries
open Option
open List

let ruleCounter = ref 0

type id = string
type opname = string
type cname = string
type rname = string
type pname = string

type term = 
	| Constr of string * (term list)
	| LangVar of string
	| BoundVar 
	| BoundTypeVar 
	| Abs of term
	| AbsType of term
	| Substitution of term * term * term 

type grammarLine = GrammarLine of string * (string option) * ((term list) option)

type formula = Formula of string * (term list)

type rule = Rule of string * (formula list) * formula

type language = Language of (grammarLine list) * (rule list) 

type pattern = 
	| PVAR of string
	| PEMPTY
	| PFORMULA of pname * (pattern list) 
	| PCONSTR of opname * (pattern list)

type e = 
	| TRUE
	| FALSE
	| ID of id
	| RULE of e
	| PREM
	| CONCL
	| ERROR of string
	| LIST of (e list)
	| APPEND of e * e  
	| HEAD of e 
	| LISTDIFF of e * e  
	| IN of e * e  
	| FORMULA of formula
	| TERM of term
	| IF of e * e * e  
	| ISVAR of e  
	| NOT of e  
	| AND of e * e  
	| OR of e * e  
	| GETVARS of e  
	| MAP of e * e 
	| EQUAL of e * e
	| UNIQUE of e * e * id * id * e
	| SELECT of e * pattern * e

exception LTR_match_failure

let term_getCNAME t = match t with | Constr(cname,_) -> cname  | _ -> raise(Failure("term_getCNAME fail: " ^ (dump t)))
let term_getArguments t = match t with | Constr(_,ts) -> ts | _ -> raise(Failure("term_getArguments fail: " ^ (dump t)))
let term_isSubstitution t = match t with | Substitution(_,_,_) -> true | _ -> false 

let rec print_term t = match t with 
	| Constr(op, ts) -> "(" ^ op ^ " " ^ (String.concat "\n" (List.map print_term ts)) ^ ")"
	| LangVar(var) -> "(VAR " ^ var ^ ")"


let rec print_e e = match e with 
	| TRUE -> "TRUE"
	| FALSE -> "FALSE"
	| RULE(e) -> "Rule " ^ print_e e
	| LIST(l) -> "LIST " ^ (String.concat "--" (List.map print_e l))
	| APPEND(e3,e4) -> 	"APPEND"
	| HEAD(e) -> 	"HEAD"
	| APPEND(e3,e4) -> 	"APPEND"
	| LISTDIFF(e3,e4) -> 	"LISTDIFF"
	| IN(e1,e2) -> "IN"
	| FORMULA(f) -> "FORMULA"
	| TERM(t) -> "TERM" ^ print_term t 
	| IF(e3,e4,e5) -> "IF"
	| ISVAR(e) -> "ISVAR"
	| NOT(e) -> "NOT"
	| AND(e3,e4) -> "AND"
(*	| MAP(e3,e4) -> MAP(List.map (substitution_arg_at_end var e2) e3, List.map (substitution_arg_at_end var e2) e4) *)
	| MAP(e3,e4) -> "MAP"
	| EQUAL(e3,e4) -> "EQUAL"
	| UNIQUE(e3,e4,uniq,map, e5) -> "UNIQUE"
	| SELECT(e3,p,e4) -> "SELECT"
	| GETVARS(e) -> "GETVARS"
	| PREM -> "PREM"
	| CONCL -> "CONCL"
	| ID(id) -> "ID " ^ id
	| ERROR(msg) -> "ERROR " ^ msg
	| _ -> raise(Failure ("print_e: " ^ (dump e)))


let term_isConstr t = match t with 
	| Constr(cname,_) -> true
	| _ -> false

let term_isVar t = match t with 
	| LangVar(var) -> true
	| _ -> false

let tr_getList e = match e with LIST(l) -> l | _ -> raise(Failure ("tr_getList " ^ dump e))
let tr_getFormula (FORMULA(f)) = f
let tr_getTerm (TERM(t)) = t
let tr_to_term (t : term) : e = TERM(t)
let tr_to_formula (f : formula) : e = FORMULA(f)

let rec term_getVariables term = match term with 
	| LangVar(name) -> [LangVar(name)]
	| Constr(name, arguments) -> List.concat (List.map term_getVariables arguments)

let grammar_line_getCategory (GrammarLine(cat,_,_)) = cat

let removeDuplicates(list') =
  let rec removeDuplicatesHelper(list) = match List.rev(list) with
  |[]->[]
  |head::tail -> if List.mem head tail then
                  removeDuplicatesHelper(List.rev(tail))
                 else [head]@removeDuplicatesHelper(List.rev(tail))
  in List.rev(removeDuplicatesHelper(list'));;


let rec substitution_term (t1 : term) (var : string) (t2 : term) : term = match t1 with 
	| LangVar(name) -> if name = var then t2 else t1
	| Constr(name, arguments) -> Constr(name, List.map (substitution_term_arg_at_the_end var t2) arguments) 
and substitution_term_arg_at_the_end (var : string) (t2 : term) (t1 : term) : term = substitution_term t1 var t2

let rec substitution (e1 : e) (var : string) (e2 : e) : e = 
	if false && var = "P'" then raise(Failure ("substitution for P' = " ^ print_e e2)) else 
	match e1 with 
	| TRUE -> TRUE
	| FALSE -> FALSE
	| RULE(e) -> RULE(substitution e var e2)
	| LIST(es) -> LIST(List.map (substitution_arg_at_end var e2) es)
	| HEAD(e) -> HEAD(substitution e var e2)
	| APPEND(e3,e4) -> 	APPEND(substitution e3 var e2, substitution e4 var e2)
	| LISTDIFF(e3,e4) -> LISTDIFF(substitution e3 var e2, substitution e4 var e2)
	| IN(e3,e4) -> 	IN(substitution e3 var e2, substitution e4 var e2)
	| FORMULA(Formula(pred,args)) -> (match e2 with 
			| TERM(t) -> FORMULA(Formula(pred,List.map (substitution_term_arg_at_the_end var (tr_getTerm e2)) args))
			| _ -> FORMULA(Formula(pred,args))   )
	| TERM(t) -> TERM(t)
	| IF(e3,e4,e5) -> IF(substitution e3 var e2, substitution e4 var e2, substitution e5 var e2)
	| ISVAR(e) -> ISVAR(substitution e var e2)
	| NOT(e) -> NOT(substitution e var e2)
	| AND(e3,e4) -> AND(substitution e3 var e2, substitution e4 var e2)
(*	| MAP(e3,e4) -> MAP(List.map (substitution_arg_at_end var e2) e3, List.map (substitution_arg_at_end var e2) e4) *)
	| MAP(e3,e4) -> MAP(substitution e3 var e2, substitution e4 var e2) 
	| EQUAL(e3,e4) -> EQUAL(substitution e3 var e2, substitution e4 var e2)
	| UNIQUE(e3,e4,uniq,map, e5) -> UNIQUE(substitution e3 var e2, substitution e4 var e2, uniq, map, substitution e5 var e2)
	| SELECT(e3,p,e4) -> SELECT(substitution e3 var e2, p, substitution e4 var e2)
	| GETVARS(e) -> GETVARS(substitution e var e2)
	| PREM -> if var = "PREM" then e2 else PREM
	| CONCL -> if var = "CONCL" then e2 else CONCL
	| ID(id) -> if id = var then e2 else ID(id)
	| ERROR(msg) -> ERROR(msg)
	| _ -> raise(Failure ("substitution: " ^ print_e e1))
and substitution_arg_at_end var e2 e1 = substitution e1 var e2
	
let substitution_byPairs e1 (var,e2) = substitution e1 var e2

let substitution_double_pair_on_pair e (var1,var2) (e1,e2)  = substitution (substitution e var1 e1) var2 e2

let rec tr_match (p : pattern) (expToMatch :  e) = match (p,expToMatch) with 
	| (PVAR(var), e) -> if false then raise(Failure ("tr_match: PVAR" ^ var ^ (dump e))) else  
		[var,e]
	| ( PFORMULA(pred1,patterns), FORMULA(Formula(pred2, terms)) ) -> 
		(if pred1 = pred2 && (List.length patterns = List.length terms) 
			then List.concat (List.map tr_match_byPairs (List.combine patterns (List.map tr_to_term terms)))
			else raise LTR_match_failure)
	| ( PCONSTR(op1,patterns), TERM(Constr(op2, terms))) -> 
		if false then raise(Failure ("tr_match: " ^ op1 ^ op2)) else 
			if terms = [] && List.hd patterns = PEMPTY then [] else (* match if the user explicitely wrote [] to match an emptylist of args *)
			(* here below, we adopts that if users write a var that ends with "s", as in Ps, then Ps is associated to the whole list of args *)
			(* here below, the else-branch, and the | _ -> case are the same 
			String.ends_with var "s" <= works opposite as the documentation. whicih says "ends_with suffix string" or var = "Ps"  *)
			(match List.hd patterns with 
			| PVAR(var) -> if String.ends_with var "s" then [var, LIST(List.map tr_to_term terms)] else List.concat (List.map tr_match_byPairs (List.combine patterns (List.map tr_to_term terms)))
			| _ ->	List.concat (List.map tr_match_byPairs (List.combine patterns (List.map tr_to_term terms)))) 
	| _ -> if false then raise(Failure ("tr_match " ^ print_e expToMatch ^ dump p)) else raise LTR_match_failure
and tr_match_byPairs (p,e) = tr_match p e
	
let rec tr_select (outputExp : e) (p : pattern) (expsToMatch : e list) : e list = match expsToMatch with 
	| [] -> []
	| head :: rest -> 	try let bindings = tr_match p head in 
								let outputExpWithSelfSubstituted = substitution outputExp "self" head in 
								 if false then raise(Failure ("tr_select: " ^ (dump outputExp) ^ (dump outputExpWithSelfSubstituted))) else  
								(List.fold_left substitution_byPairs outputExpWithSelfSubstituted bindings) :: (tr_select outputExp p rest) 
						with | LTR_match_failure -> tr_select outputExp p rest



let var_GetVarname (LangVar(var)) = var

let language_getGrammar (Language(grammar, _)) = grammar
let language_getRules (Language(_, rules)) = rules



let rule_getInputOfConclusion (Rule(_,_,Formula(predname,ts))) = if predname = "typeOf" then List.nth ts 1 else List.hd ts
let rule_getOutputOfConclusion (Rule(_,_,Formula(_,ts))) = List.last ts
let rule_getRulename (Rule(rname,_,_)) = rname
let rule_getPremises (Rule(_,premises,_)) = premises
let rule_getConclusion (Rule(_,_,conclusion)) = conclusion

let formula_getArguments (Formula(predname,ts)) = ts
let formula_getPredname (Formula(predname,_)) = predname
let formula_getFirstArg f = List.hd (formula_getArguments f)


let rule_isPredname predname (Rule(_,_,Formula(predname2,_))) = predname = predname2
let rule_getTypingPremises r = List.filter (fun f -> formula_getPredname f = "typeOf") (rule_getPremises r)
let rule_getSubtypingPremises r = List.filter (fun f -> formula_getPredname f = "subtype") (rule_getPremises r)

let language_getTypingRules lan = List.filter (rule_isPredname "typeOf") (language_getRules lan)
let language_getReductionRules lan = List.filter (rule_isPredname "step") (language_getRules lan)

(* extract_positions returns a list [i1, i2, ..] *)
let term_argsIdxEqualsTo t var = List.filter (fun i -> i >= 0) (mapi (fun i arg -> if arg = (LangVar var) then i+1 else -100) (term_getArguments t))  

let makeSubtypeByPair p = Formula("subtype",[fst p ; snd p])

let is_value t = (match t with 
	| Constr(op, ts) -> op = "abs" 
	| LangVar(var) -> var = "V"
	| _ -> false
	) 

let is_error t = (match t with 
	| Constr(op, ts) -> op = "error"
	| _ -> false
	) 
