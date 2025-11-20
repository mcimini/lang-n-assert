
(* The type of tokens. *)

type token = 
  | TRUE
<<<<<<< HEAD
  | SOUNDVARIANCE
=======
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
  | RIGHTSQUARE
  | RIGHTPAR
  | QUOTE
  | NUM of (string)
  | NODUPLI
<<<<<<< HEAD
  | MUTABLE
=======
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
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
