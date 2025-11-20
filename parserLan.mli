
(* The type of tokens. *)

type token = 
  | VARX
  | VARTERM of (string)
  | VARLEX of (string)
  | VARBIGX
  | VALUEPRED
  | VALUECTX
  | TURNSTYLE
  | SUBTYPING
  | SUBSTBAR
  | STEP
  | RIGHTSQUARE
  | RIGHTPAR
  | PROVIDED
  | NOSTEP
  | MID
  | LEFTSQUARE
  | LEFTPAR
  | LABELEDSTEP
  | INT of (int)
  | GRAMMARASSIGN
  | GAMMA
  | EXPCTX
<<<<<<< HEAD
  | EQUAL
=======
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
  | EOF
  | EMPTYCTX
  | DOT
  | DIRECTIVE
  | COMMA
  | COLON
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val fileLan: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Language.language)
