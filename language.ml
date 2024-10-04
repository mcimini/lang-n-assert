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


let term_getCNAME t = match t with | Constr(cname,_) -> cname  | _ -> raise(Failure("term_getCNAME fail: " ^ (dump t)))
let term_getArguments t = match t with | Constr(_,ts) -> ts | _ -> raise(Failure("term_getArguments fail: " ^ (dump t)))
let term_isSubstitution t = match t with | Substitution(_,_,_) -> true | _ -> false 

let rec print_term (t : term) = match t with 
	| Constr(op, ts) -> "(" ^ op ^ " " ^ (String.concat "\n" (List.map print_term ts)) ^ ")"
(*	| LangVar(var) -> "(VAR " ^ var ^ ")" *)
	| LangVar(var) -> var
	| Substitution(t1,t2,t3) -> print_term t1 ^ "[" ^ print_term t2 ^ "/" ^ print_term t3 ^ "]"
	| BoundVar -> "x"
	
let print_formula (Formula(predname,ts)) = match predname with 
	| "typeOf" -> (match List.rev ts with (ty :: e :: assumptions) -> String.concat " | " (List.map print_term assumptions) ^ " |- " ^ print_term e ^ " : " ^ print_term ty)
	| "subtype" -> (match ts with [t1 ; t2] -> print_term t1 ^ " <: " ^ print_term t2)
	| _ -> "(" ^ predname ^ " " ^ String.concat " " (List.map print_term ts) ^ ")"



let term_isConstr t = match t with 
	| Constr(cname,_) -> true
	| _ -> false

let term_isVar t = match t with 
	| LangVar(var) -> true
	| _ -> false


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



let var_GetVarname (LangVar(var)) = var

let language_getGrammar (Language(grammar, _)) = grammar
let language_getRules (Language(_, rules)) = rules



let rule_getInputOfConclusion (Rule(_,_,Formula(predname,ts))) = if predname = "typeOf" then List.nth (List.rev ts) 1 else List.hd ts (* for typeOf is the second to last, so we reverse and get the second *)
let rule_getOutputOfConclusion (Rule(_,_,Formula(_,ts))) = List.last ts
let rule_getRulename (Rule(rname,_,_)) = rname
let rule_getPremises (Rule(_,premises,_)) = premises
let rule_getConclusion (Rule(_,_,conclusion)) = conclusion

let formula_getArguments (Formula(predname,ts)) = ts
let formula_getPredname (Formula(predname,_)) = predname
let formula_getFirstArg f = List.hd (formula_getArguments f)
let formula_getLastArg f = List.last (formula_getArguments f)


let rule_isPredname predname (Rule(_,_,Formula(predname2,_))) = predname = predname2
let rule_getTypingPremises r = List.filter (fun f -> formula_getPredname f = "typeOf") (rule_getPremises r)
let rule_getSubtypingPremises r = List.filter (fun f -> formula_getPredname f = "subtype") (rule_getPremises r)

let grammarLine_getCategory (GrammarLine(cname, metavar, items)) = cname
let grammarLine_getItemsAsOption (GrammarLine(cname, metavar, items)) = items

let language_getTypingRules lan = List.filter (rule_isPredname "typeOf") (language_getRules lan)
let language_getReductionRules lan = List.filter (rule_isPredname "step") (language_getRules lan)


let language_getGrammarItemsByCategory lan (cname : string) : (term list) option = 
	let gr = List.filter (fun gr -> grammarLine_getCategory gr = cname) (language_getGrammar lan) in 
	if gr = [] then None else grammarLine_getItemsAsOption (List.hd gr)

(* This function does NOT return only the constructor name *)
(* This function returns only the terms with a top-level constructor name. No variables for example. *)
let language_getGrammarItemsByCategoryButOnlyConstructED lan (cname : string) : (term list) option = 
	let optionItems = language_getGrammarItemsByCategory lan cname in 
	if is_none optionItems then None
	else Some (List.filter term_isConstr (get optionItems))

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

let list_difference a b = let notpresent x = not (List.mem x b) in List.filter notpresent a 

(* returns the first premise whose output has variable var *)
let premises_search_by_output (typingPremises : formula list) (var : term) : formula = List.hd (List.filter (fun f -> List.mem var (term_getVariables (formula_getLastArg f))) typingPremises)
	