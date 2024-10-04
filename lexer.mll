{
  open Lexing
  open Parser
  exception Error of string


let next_line lexbuf =
  let pos = lexbuf.lex_curr_p in
  lexbuf.lex_curr_p <-
    { pos with pos_bol = lexbuf.lex_curr_pos;
               pos_lnum = pos.pos_lnum + 1
    }

}

let num = ['0'-'9']*
let id = ['a'-'z' 'A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '-' ''']*


rule token = parse
    [' ' '\t']  { token lexbuf }
  | ['\r' '\n']  { next_line lexbuf; token lexbuf }
  | "true"               { TRUE }
  | "Inductive"               { INDUCTIVE }
  | "CtxCompliant"               { CTX }
  | "HandlesError"               { ERR }
  | "Effectful"               { EFF }
  | "NoDupliEff"               { NODUPLI }
  | "Contra"               { CONTRA }
  | "ContraResp"               { CONTRARESP }
  | "Error"               { ERROR }
  | "ErrorAnyType"               { ERRORANY }
  | "Invariant"               { INVARIANT }
  | "(" { LEFTPAR }
  | ")" { RIGHTPAR }
  | "[" { LEFTSQUARE }
  | "]" { RIGHTSQUARE }
  | "," { COMMA }
  | "'" { QUOTE }
  | id             { ID (Lexing.lexeme lexbuf) }
  | num             { NUM (Lexing.lexeme lexbuf) }
  | eof             { EOF }
  | _
	    { raise (Error (Printf.sprintf "At offset %d: unexpected character %s.\n" (Lexing.lexeme_start lexbuf) (Lexing.lexeme lexbuf))) }
{
}
