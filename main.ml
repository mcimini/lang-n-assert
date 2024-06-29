open Batteries
open Unix
open Sys
open Filename
open Option
open Language
open Logic
open Prover
(*
open Pretty_printer
open Pretty_printerLan

*)

open Lexing

let get_positions lexbuf = let pos = lexbuf.lex_curr_p in pos.pos_fname ^ ":" ^ string_of_int pos.pos_lnum  ^ ":" ^ string_of_int (pos.pos_cnum - pos.pos_bol + 1)


let parseOneLanguage filename : language =
  (* Parse the language, lan is the parsed language *)
  let filename = "languages/" ^ filename in 
  let input = open_in filename in 
  let filebuf = Lexing.from_channel input in
  let unusedVar = print_endline ("Reading the language: " ^ filename) in 
  let lan = try (ParserLan.fileLan LexerLan.token filebuf) with
						    | LexerLan.Error msg -> raise(Failure("Lexer error: " ^ get_positions filebuf ^ " with message: " ^ msg))
						    | ParserLan.Error -> raise(Failure("Parser error: " ^ get_positions filebuf)) in
	lan 

let parseAssertion (a : string) : assertion = 
   (* Parse the assertion, returns a list of assertions *)
   let stringbuf = Lexing.from_string a in 
   let a = try (Parser.commandLine Lexer.token stringbuf) with
 						    | Lexer.Error msg -> raise(Failure("Lexer error: " ^ get_positions stringbuf ^ " with message: " ^ msg))
 						    | Parser.Error -> raise(Failure("Parser error: " ^ get_positions stringbuf)) in
       a 
	   

let () = match Array.to_list Sys.argv with 
	| [exe ; pre ; lan ; post] -> 
							let pre = parseAssertion pre in 
							let lan = parseOneLanguage lan in 
							let post = parseAssertion post in 
							let proof = prove [pre] lan post in 
							if is_some proof 
								then (print_endline (print_proof (get proof)))
								else print_endline "Proof not found";
	| otherwise -> print_endline ("Command line error: example: ./lna pre file.lan post");


(*

TESTS:

Issue 1a
matteocimini@Matteos-MacBook-Pro-2 Lang-n-assert % ./lna 'true' lambda_div_print.lan 'NoDupliEff(CBN-BETA)'
Reading the language: languages/lambda_div_print.lan
NO

fixed 1a
matteocimini@Matteos-MacBook-Pro-2 Lang-n-assert % ./lna 'true' lambda_div_print.lan_fixed_1a.lan 'NoDupliEff(BETA)'    
Reading the language: languages/lambda_div_print.lan_fixed_1a.lan
YES

Issue 1b
matteocimini@Matteos-MacBook-Pro-2 Lang-n-assert % ./lna 'true' lambda_div_print.lan_fixed_1a.lan 'CtxCompliant(BETA)'
Reading the language: languages/lambda_div_print.lan_fixed_1a.lan
NO

fixed 1b
matteocimini@Matteos-MacBook-Pro-2 Lang-n-assert % ./lna 'true' lambda_div_print.lan_fixed_1b.lan 'CtxCompliant(BETA)'
Reading the language: languages/lambda_div_print.lan_fixed_1b.lan
YES

Issue 2
matteocimini@Matteos-MacBook-Pro-2 Lang-n-assert % ./lna 'true' lambda_div_print.lan_fixed_1b.lan 'HandlesError(try,1)'
Reading the language: languages/lambda_div_print.lan_fixed_1b.lan
NO

fixed 2
matteocimini@Matteos-MacBook-Pro-2 Lang-n-assert % ./lna 'true' lambda_div_print.lan_fixed_2.lan 'HandlesError(try,1)'
Reading the language: languages/lambda_div_print.lan_fixed_2.lan
YES

Issue 3
matteocimini@Matteos-MacBook-Pro-2 Lang-n-assert % ./lna 'true' lambda_div_print.lan_fixed_2.lan 'ContraResp(T-APP-BAD,arrow)'
Reading the language: languages/lambda_div_print.lan_fixed_2.lan
NO

fixed 3
matteocimini@Matteos-MacBook-Pro-2 Lang-n-assert % ./lna 'true' lambda_div_print.lan_fixed_3.lan 'ContraResp(T-APP,arrow)'   
Reading the language: languages/lambda_div_print.lan_fixed_3.lan
YES


*)