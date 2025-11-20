
(* The type of tokens. *)

type token = 
  | TRUE
  | SOUNDVARIANCE
  | RIGHTSQUARE
  | RIGHTPAR
  | QUOTE
  | NUM of (string)
  | NODUPLI
  | MUTABLE
  | LEFTSQUARE
  | LEFTPAR
  | INVARIANT
  | INDUCTIVE
  | ID of (string)
  | ERRORANY
  | ERROR
  | ERR
  | EOF
  | EFF
  | CTX
  | CONTRARESP
  | CONTRA
  | COMMA

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val commandLine: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> ((Logic.assertion))
