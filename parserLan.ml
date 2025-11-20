
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | VARX
    | VARTERM of (
# 6 "parserLan.mly"
       (string)
# 12 "parserLan.ml"
  )
    | VARLEX of (
# 5 "parserLan.mly"
       (string)
# 17 "parserLan.ml"
  )
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
    | INT of (
# 7 "parserLan.mly"
       (int)
# 37 "parserLan.ml"
  )
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
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
<<<<<<< HEAD
  | MenhirState105
  | MenhirState100
  | MenhirState95
  | MenhirState94
  | MenhirState93
  | MenhirState92
  | MenhirState91
  | MenhirState88
  | MenhirState83
  | MenhirState81
  | MenhirState80
  | MenhirState79
  | MenhirState78
  | MenhirState75
  | MenhirState74
=======
  | MenhirState103
  | MenhirState98
  | MenhirState93
  | MenhirState92
  | MenhirState91
  | MenhirState90
  | MenhirState89
  | MenhirState86
  | MenhirState81
  | MenhirState79
  | MenhirState78
  | MenhirState77
  | MenhirState76
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
  | MenhirState73
  | MenhirState72
  | MenhirState71
  | MenhirState70
  | MenhirState69
  | MenhirState68
  | MenhirState67
  | MenhirState66
  | MenhirState65
  | MenhirState64
  | MenhirState63
  | MenhirState62
  | MenhirState61
  | MenhirState60
  | MenhirState59
  | MenhirState58
  | MenhirState57
  | MenhirState56
  | MenhirState55
  | MenhirState53
  | MenhirState52
  | MenhirState46
  | MenhirState44
  | MenhirState43
  | MenhirState41
  | MenhirState38
  | MenhirState30
  | MenhirState29
  | MenhirState28
  | MenhirState26
  | MenhirState25
  | MenhirState20
  | MenhirState19
  | MenhirState17
  | MenhirState16
  | MenhirState15
  | MenhirState14
  | MenhirState13
  | MenhirState11
  | MenhirState4
  | MenhirState0

# 1 "parserLan.mly"
  
  open Language

<<<<<<< HEAD
# 127 "parserLan.ml"

let rec _menhir_reduce45 : _menhir_env -> ((('ttv_tail * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 132 "parserLan.ml"
=======
# 124 "parserLan.ml"

let rec _menhir_reduce44 : _menhir_env -> ((('ttv_tail * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 129 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
)) * _menhir_state * 'tv_list_term_) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _menhir_s), (opname : (
# 5 "parserLan.mly"
       (string)
<<<<<<< HEAD
# 138 "parserLan.ml"
=======
# 135 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    ))), _, (ts : 'tv_list_term_)) = _menhir_stack in
    let _4 = () in
    let _1 = () in
    let _v : 'tv_term = 
<<<<<<< HEAD
# 57 "parserLan.mly"
    ( Constr(opname, ts) )
# 145 "parserLan.ml"
=======
# 56 "parserLan.mly"
    ( Constr(opname, ts) )
# 142 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_separated_nonempty_list_MID_assumption_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_MID_assumption_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
<<<<<<< HEAD
    | MenhirState88 | MenhirState83 | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv435) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_MID_assumption_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv433) = Obj.magic _menhir_stack in
=======
    | MenhirState86 | MenhirState81 | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv425) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_MID_assumption_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv423) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_MID_assumption_) : 'tv_separated_nonempty_list_MID_assumption_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_MID_assumption__ = 
# 130 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x )
<<<<<<< HEAD
# 164 "parserLan.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_MID_assumption__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv434)) : 'freshtv436)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv439 * _menhir_state * 'tv_assumption)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_MID_assumption_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv437 * _menhir_state * 'tv_assumption)) = Obj.magic _menhir_stack in
=======
# 161 "parserLan.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_MID_assumption__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv424)) : 'freshtv426)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv429 * _menhir_state * 'tv_assumption)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_MID_assumption_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv427 * _menhir_state * 'tv_assumption)) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_MID_assumption_) : 'tv_separated_nonempty_list_MID_assumption_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_assumption)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_MID_assumption_ = 
# 217 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
<<<<<<< HEAD
# 181 "parserLan.ml"
         in
        _menhir_goto_separated_nonempty_list_MID_assumption_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv438)) : 'freshtv440)
    | _ ->
        _menhir_fail ()

and _menhir_run95 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_assumption -> 'ttv_return =
=======
# 178 "parserLan.ml"
         in
        _menhir_goto_separated_nonempty_list_MID_assumption_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv428)) : 'freshtv430)
    | _ ->
        _menhir_fail ()

and _menhir_run93 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_assumption -> 'ttv_return =
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | GAMMA ->
<<<<<<< HEAD
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | VARTERM _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv431) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState95 in
        let (_v : (
# 6 "parserLan.mly"
       (string)
# 201 "parserLan.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce4 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv432)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95
=======
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | VARTERM _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv421) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState93 in
        let (_v : (
# 6 "parserLan.mly"
       (string)
# 198 "parserLan.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce4 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv422)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d

and _menhir_goto_separated_nonempty_list_AND_formula_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_formula_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
<<<<<<< HEAD
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv425) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_AND_formula_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv423) = Obj.magic _menhir_stack in
=======
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv415) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_AND_formula_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv413) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_AND_formula_) : 'tv_separated_nonempty_list_AND_formula_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_AND_formula__ = 
# 130 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x )
<<<<<<< HEAD
# 226 "parserLan.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_AND_formula__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv424)) : 'freshtv426)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv429 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_AND_formula_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv427 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
=======
# 223 "parserLan.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_AND_formula__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv414)) : 'freshtv416)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv419 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_AND_formula_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv417 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_AND_formula_) : 'tv_separated_nonempty_list_AND_formula_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_formula)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_formula_ = 
# 217 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
<<<<<<< HEAD
# 243 "parserLan.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_formula_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv428)) : 'freshtv430)
=======
# 240 "parserLan.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_formula_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)) : 'freshtv420)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_AND_formula__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_AND_formula__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
    let (_menhir_stack : ((((('freshtv421 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 256 "parserLan.ml"
=======
    let (_menhir_stack : ((((('freshtv411 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 253 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    ))) * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_loption_separated_nonempty_list_AND_formula__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : ((((('freshtv417 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 266 "parserLan.ml"
        ))) * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_loption_separated_nonempty_list_AND_formula__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv415 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 273 "parserLan.ml"
=======
        let (_menhir_stack : ((((('freshtv407 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 263 "parserLan.ml"
        ))) * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_loption_separated_nonempty_list_AND_formula__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv405 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 270 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ))) * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_loption_separated_nonempty_list_AND_formula__) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), (rulename : (
# 6 "parserLan.mly"
       (string)
<<<<<<< HEAD
# 278 "parserLan.ml"
=======
# 275 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ))), _, (f : 'tv_formula)), _, (xs0 : 'tv_loption_separated_nonempty_list_AND_formula__)) = _menhir_stack in
        let _7 = () in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_rule = let premises =
          let xs = xs0 in
          
# 206 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( xs )
<<<<<<< HEAD
# 289 "parserLan.ml"
          
        in
        
# 79 "parserLan.mly"
    ( Rule(rulename,premises,f) )
# 295 "parserLan.ml"
         in
        _menhir_goto_rule _menhir_env _menhir_stack _menhir_s _v) : 'freshtv416)) : 'freshtv418)
=======
# 286 "parserLan.ml"
          
        in
        
# 78 "parserLan.mly"
    ( Rule(rulename,premises,f) )
# 292 "parserLan.ml"
         in
        _menhir_goto_rule _menhir_env _menhir_stack _menhir_s _v) : 'freshtv406)) : 'freshtv408)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : ((((('freshtv419 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 305 "parserLan.ml"
        ))) * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_loption_separated_nonempty_list_AND_formula__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv420)) : 'freshtv422)
=======
        let (_menhir_stack : ((((('freshtv409 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 302 "parserLan.ml"
        ))) * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_loption_separated_nonempty_list_AND_formula__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv410)) : 'freshtv412)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d

and _menhir_goto_rule : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_rule -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
    let (_menhir_stack : 'freshtv413 * _menhir_state * 'tv_rule) = Obj.magic _menhir_stack in
=======
    let (_menhir_stack : 'freshtv403 * _menhir_state * 'tv_rule) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LEFTSQUARE ->
<<<<<<< HEAD
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | EOF ->
        _menhir_reduce23 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100) : 'freshtv414)
=======
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | EOF ->
        _menhir_reduce22 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98) : 'freshtv404)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d

and _menhir_goto_loption_separated_nonempty_list_MID_assumption__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_MID_assumption__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
    let (_menhir_stack : 'freshtv411 * _menhir_state * 'tv_loption_separated_nonempty_list_MID_assumption__) = Obj.magic _menhir_stack in
=======
    let (_menhir_stack : 'freshtv401 * _menhir_state * 'tv_loption_separated_nonempty_list_MID_assumption__) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TURNSTYLE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : 'freshtv407 * _menhir_state * 'tv_loption_separated_nonempty_list_MID_assumption__) = Obj.magic _menhir_stack in
=======
        let (_menhir_stack : 'freshtv397 * _menhir_state * 'tv_loption_separated_nonempty_list_MID_assumption__) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
<<<<<<< HEAD
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | LEFTPAR ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | VALUECTX ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | VARBIGX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | VARTERM _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
        | VARX ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv408)
=======
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | LEFTPAR ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | VALUECTX ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | VARBIGX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | VARTERM _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
        | VARX ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv398)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : 'freshtv409 * _menhir_state * 'tv_loption_separated_nonempty_list_MID_assumption__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv410)) : 'freshtv412)
=======
        let (_menhir_stack : 'freshtv399 * _menhir_state * 'tv_loption_separated_nonempty_list_MID_assumption__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv400)) : 'freshtv402)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d

and _menhir_reduce4 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 6 "parserLan.mly"
       (string)
<<<<<<< HEAD
# 368 "parserLan.ml"
=======
# 365 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (metavar : (
# 6 "parserLan.mly"
       (string)
<<<<<<< HEAD
# 374 "parserLan.ml"
    ))) = _menhir_stack in
    let _v : 'tv_assumption = 
# 113 "parserLan.mly"
    ( LangVar metavar )
# 379 "parserLan.ml"
=======
# 371 "parserLan.ml"
    ))) = _menhir_stack in
    let _v : 'tv_assumption = 
# 110 "parserLan.mly"
    ( LangVar metavar )
# 376 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
     in
    _menhir_goto_assumption _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_list_term_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_term_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : ('freshtv389 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv387 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
=======
        let (_menhir_stack : ('freshtv379 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv377 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_term)), _, (xs : 'tv_list_term_)) = _menhir_stack in
        let _v : 'tv_list_term_ = 
# 187 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
<<<<<<< HEAD
# 396 "parserLan.ml"
         in
        _menhir_goto_list_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv388)) : 'freshtv390)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv395 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 404 "parserLan.ml"
=======
# 393 "parserLan.ml"
         in
        _menhir_goto_list_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv378)) : 'freshtv380)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv385 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 401 "parserLan.ml"
        )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv381 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 411 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce44 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv382)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv383 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 422 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv384)) : 'freshtv386)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv395 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 431 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv391 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
<<<<<<< HEAD
# 414 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce45 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv392)
=======
# 441 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COMMA | LABELEDSTEP | LEFTSQUARE | NOSTEP | STEP | SUBTYPING ->
                _menhir_reduce44 _menhir_env (Obj.magic _menhir_stack)
            | AND | DOT | PROVIDED ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv387 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 453 "parserLan.ml"
                )) * _menhir_state * 'tv_list_term_)) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), (predname : (
# 5 "parserLan.mly"
       (string)
# 458 "parserLan.ml"
                ))), _, (ts : 'tv_list_term_)) = _menhir_stack in
                let _4 = () in
                let _1 = () in
                let _v : 'tv_formula = 
# 96 "parserLan.mly"
    ( Formula(predname, ts) )
# 465 "parserLan.ml"
                 in
                _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv388)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv389 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 475 "parserLan.ml"
                )) * _menhir_state * 'tv_list_term_)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv390)) : 'freshtv392)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv393 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
<<<<<<< HEAD
# 425 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv394)) : 'freshtv396)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv405 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 434 "parserLan.ml"
        )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv401 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 444 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COMMA | EQUAL | LABELEDSTEP | LEFTSQUARE | NOSTEP | STEP | SUBTYPING ->
                _menhir_reduce45 _menhir_env (Obj.magic _menhir_stack)
            | AND | DOT | PROVIDED ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv397 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 456 "parserLan.ml"
                )) * _menhir_state * 'tv_list_term_)) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), (predname : (
# 5 "parserLan.mly"
       (string)
# 461 "parserLan.ml"
                ))), _, (ts : 'tv_list_term_)) = _menhir_stack in
                let _4 = () in
                let _1 = () in
                let _v : 'tv_formula = 
# 97 "parserLan.mly"
    ( Formula(predname, ts) )
# 468 "parserLan.ml"
                 in
                _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv398)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv399 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 478 "parserLan.ml"
                )) * _menhir_state * 'tv_list_term_)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv400)) : 'freshtv402)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv403 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 489 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv404)) : 'freshtv406)
=======
# 486 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv394)) : 'freshtv396)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    | _ ->
        _menhir_fail ()

and _menhir_goto_assumption : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_assumption -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
<<<<<<< HEAD
    | MenhirState41 | MenhirState83 | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv379 * _menhir_state * 'tv_assumption) = Obj.magic _menhir_stack in
=======
    | MenhirState41 | MenhirState81 | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv369 * _menhir_state * 'tv_assumption) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MID ->
<<<<<<< HEAD
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack)
        | TURNSTYLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv375 * _menhir_state * 'tv_assumption) = Obj.magic _menhir_stack in
=======
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack)
        | TURNSTYLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv365 * _menhir_state * 'tv_assumption) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
<<<<<<< HEAD
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv376)
=======
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv366)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : 'freshtv377 * _menhir_state * 'tv_assumption) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv378)) : 'freshtv380)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv385 * _menhir_state * 'tv_assumption) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : 'freshtv367 * _menhir_state * 'tv_assumption) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv368)) : 'freshtv370)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv375 * _menhir_state * 'tv_assumption) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MID ->
<<<<<<< HEAD
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack)
        | TURNSTYLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv381 * _menhir_state * 'tv_assumption) = Obj.magic _menhir_stack in
=======
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack)
        | TURNSTYLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv371 * _menhir_state * 'tv_assumption) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            ((let (_menhir_stack, _menhir_s, (x : 'tv_assumption)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_MID_assumption_ = 
# 215 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [ x ] )
<<<<<<< HEAD
# 552 "parserLan.ml"
             in
            _menhir_goto_separated_nonempty_list_MID_assumption_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv382)
=======
# 549 "parserLan.ml"
             in
            _menhir_goto_separated_nonempty_list_MID_assumption_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv372)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : 'freshtv383 * _menhir_state * 'tv_assumption) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv384)) : 'freshtv386)
=======
            let (_menhir_stack : 'freshtv373 * _menhir_state * 'tv_assumption) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv374)) : 'freshtv376)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    | _ ->
        _menhir_fail ()

and _menhir_goto_formula : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : ((('freshtv365 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 574 "parserLan.ml"
=======
        let (_menhir_stack : ((('freshtv355 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 571 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ))) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ((('freshtv357 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 584 "parserLan.ml"
            ))) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv355 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 591 "parserLan.ml"
=======
            let (_menhir_stack : ((('freshtv347 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 581 "parserLan.ml"
            ))) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv345 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 588 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            ))) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (rulename : (
# 6 "parserLan.mly"
       (string)
<<<<<<< HEAD
# 596 "parserLan.ml"
=======
# 593 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            ))), _, (f : 'tv_formula)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_rule = 
<<<<<<< HEAD
# 77 "parserLan.mly"
    ( Rule(rulename, [],f) )
# 604 "parserLan.ml"
             in
            _menhir_goto_rule _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)) : 'freshtv358)
        | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv361 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 612 "parserLan.ml"
=======
# 76 "parserLan.mly"
    ( Rule(rulename, [],f) )
# 601 "parserLan.ml"
             in
            _menhir_goto_rule _menhir_env _menhir_stack _menhir_s _v) : 'freshtv346)) : 'freshtv348)
        | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv351 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 609 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            ))) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
<<<<<<< HEAD
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | GAMMA ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | LEFTPAR ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | VALUEPRED ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | VARTERM _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | TURNSTYLE ->
                _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | DOT ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv359) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState83 in
                ((let _v : 'tv_loption_separated_nonempty_list_AND_formula__ = 
# 128 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 642 "parserLan.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_AND_formula__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83) : 'freshtv362)
=======
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | GAMMA ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | LEFTPAR ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | VALUEPRED ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | VARTERM _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | TURNSTYLE ->
                _menhir_reduce28 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | DOT ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv349) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState81 in
                ((let _v : 'tv_loption_separated_nonempty_list_AND_formula__ = 
# 128 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 639 "parserLan.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_AND_formula__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv350)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81) : 'freshtv352)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ((('freshtv363 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 656 "parserLan.ml"
            ))) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv364)) : 'freshtv366)
    | MenhirState88 | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv373 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : ((('freshtv353 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 653 "parserLan.ml"
            ))) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)) : 'freshtv356)
    | MenhirState86 | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv363 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : 'freshtv367 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : 'freshtv357 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
<<<<<<< HEAD
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | GAMMA ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | LEFTPAR ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | VALUEPRED ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | VARTERM _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | TURNSTYLE ->
                _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv368)
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv369 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
=======
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | GAMMA ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | LEFTPAR ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | VALUEPRED ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | VARTERM _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | TURNSTYLE ->
                _menhir_reduce28 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv358)
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv359 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            ((let (_menhir_stack, _menhir_s, (x : 'tv_formula)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_formula_ = 
# 215 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [ x ] )
<<<<<<< HEAD
# 701 "parserLan.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_formula_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv370)
=======
# 698 "parserLan.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_formula_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : 'freshtv371 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv372)) : 'freshtv374)
=======
            let (_menhir_stack : 'freshtv361 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv362)) : 'freshtv364)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_MID_term_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_MID_term_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : ('freshtv349 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_MID_term_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv347 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
=======
        let (_menhir_stack : ('freshtv339 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_MID_term_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv337 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_MID_term_) : 'tv_separated_nonempty_list_MID_term_) = _v in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_term)), _) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_MID_term_ = 
# 217 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
<<<<<<< HEAD
# 731 "parserLan.ml"
         in
        _menhir_goto_separated_nonempty_list_MID_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)) : 'freshtv350)
    | MenhirState4 | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv353) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_MID_term_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv351) = Obj.magic _menhir_stack in
=======
# 728 "parserLan.ml"
         in
        _menhir_goto_separated_nonempty_list_MID_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv338)) : 'freshtv340)
    | MenhirState4 | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv343) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_MID_term_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv341) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_MID_term_) : 'tv_separated_nonempty_list_MID_term_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_MID_term__ = 
# 130 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x )
<<<<<<< HEAD
# 746 "parserLan.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_MID_term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)) : 'freshtv354)
=======
# 743 "parserLan.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_MID_term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv342)) : 'freshtv344)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    | _ ->
        _menhir_fail ()

and _menhir_run14 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_term -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | LEFTPAR ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | VALUECTX ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | VARBIGX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | VARTERM _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | VARX ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_goto_list_rule_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_rule_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
<<<<<<< HEAD
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv331 * _menhir_state * 'tv_rule) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_rule_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv329 * _menhir_state * 'tv_rule) = Obj.magic _menhir_stack in
=======
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv321 * _menhir_state * 'tv_rule) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_rule_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv319 * _menhir_state * 'tv_rule) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_rule_) : 'tv_list_rule_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_rule)) = _menhir_stack in
        let _v : 'tv_list_rule_ = 
# 187 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
<<<<<<< HEAD
# 791 "parserLan.ml"
         in
        _menhir_goto_list_rule_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv330)) : 'freshtv332)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv345 * _menhir_state * 'tv_list_grammarLine_)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_rule_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv343 * _menhir_state * 'tv_list_grammarLine_)) = Obj.magic _menhir_stack in
=======
# 788 "parserLan.ml"
         in
        _menhir_goto_list_rule_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv320)) : 'freshtv322)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv335 * _menhir_state * 'tv_list_grammarLine_)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_rule_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv333 * _menhir_state * 'tv_list_grammarLine_)) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_ : _menhir_state) = _menhir_s in
        let ((rules : 'tv_list_rule_) : 'tv_list_rule_) = _v in
        ((let (_menhir_stack, _menhir_s, (grammar : 'tv_list_grammarLine_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_language = 
<<<<<<< HEAD
# 53 "parserLan.mly"
    (   let unusedVar = ruleCounter := 0 in Language(grammar, rules) )
# 808 "parserLan.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv341) = _menhir_stack in
=======
# 52 "parserLan.mly"
    (   let unusedVar = ruleCounter := 0 in Language(grammar, rules) )
# 805 "parserLan.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv331) = _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_language) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : 'freshtv339 * _menhir_state * 'tv_language) = Obj.magic _menhir_stack in
=======
        let (_menhir_stack : 'freshtv329 * _menhir_state * 'tv_language) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : 'freshtv335 * _menhir_state * 'tv_language) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv333 * _menhir_state * 'tv_language) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (lan : 'tv_language)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 41 "parserLan.mly"
      (Language.language)
# 830 "parserLan.ml"
            ) = 
# 49 "parserLan.mly"
    ( lan )
# 834 "parserLan.ml"
             in
            _menhir_goto_fileLan _menhir_env _menhir_stack _menhir_s _v) : 'freshtv334)) : 'freshtv336)
=======
            let (_menhir_stack : 'freshtv325 * _menhir_state * 'tv_language) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv323 * _menhir_state * 'tv_language) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (lan : 'tv_language)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 40 "parserLan.mly"
      (Language.language)
# 827 "parserLan.ml"
            ) = 
# 48 "parserLan.mly"
    ( lan )
# 831 "parserLan.ml"
             in
            _menhir_goto_fileLan _menhir_env _menhir_stack _menhir_s _v) : 'freshtv324)) : 'freshtv326)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : 'freshtv337 * _menhir_state * 'tv_language) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv338)) : 'freshtv340)) : 'freshtv342)) : 'freshtv344)) : 'freshtv346)
    | _ ->
        _menhir_fail ()

and _menhir_reduce29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
=======
            let (_menhir_stack : 'freshtv327 * _menhir_state * 'tv_language) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv328)) : 'freshtv330)) : 'freshtv332)) : 'freshtv334)) : 'freshtv336)
    | _ ->
        _menhir_fail ()

and _menhir_reduce28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_MID_assumption__ = 
# 128 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
<<<<<<< HEAD
# 852 "parserLan.ml"
=======
# 849 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
     in
    _menhir_goto_loption_separated_nonempty_list_MID_assumption__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parserLan.mly"
       (string)
<<<<<<< HEAD
# 859 "parserLan.ml"
=======
# 856 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
<<<<<<< HEAD
    | COMMA | EQUAL | LABELEDSTEP | LEFTSQUARE | NOSTEP | STEP | SUBTYPING ->
        _menhir_reduce48 _menhir_env (Obj.magic _menhir_stack)
=======
    | COMMA | LABELEDSTEP | LEFTSQUARE | NOSTEP | STEP | SUBTYPING ->
        _menhir_reduce47 _menhir_env (Obj.magic _menhir_stack)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    | MID | TURNSTYLE ->
        _menhir_reduce4 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : 'freshtv327 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 877 "parserLan.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv328)
=======
        let (_menhir_stack : 'freshtv317 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 874 "parserLan.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv318)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LEFTPAR ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | VALUECTX ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | VARBIGX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | VARTERM _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | VARX ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VARBIGX ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
    | VARLEX _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : 'freshtv323 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 5 "parserLan.mly"
       (string)
# 919 "parserLan.ml"
=======
        let (_menhir_stack : 'freshtv313 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 5 "parserLan.mly"
       (string)
# 916 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | LEFTPAR ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | VALUECTX ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | VARBIGX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | VARTERM _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | VARX ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | RIGHTPAR ->
<<<<<<< HEAD
            _menhir_reduce25 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46) : 'freshtv324)
=======
            _menhir_reduce24 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46) : 'freshtv314)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    | VARX ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : 'freshtv325 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv326)
=======
        let (_menhir_stack : 'freshtv315 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv316)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d

and _menhir_run49 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : 'freshtv317 * _menhir_state) = Obj.magic _menhir_stack in
=======
        let (_menhir_stack : 'freshtv307 * _menhir_state) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VARBIGX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ('freshtv307 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv305 * _menhir_state)) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : ('freshtv297 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv295 * _menhir_state)) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_assumption = 
<<<<<<< HEAD
# 111 "parserLan.mly"
 ( Constr("gammaAddX", []) )
# 978 "parserLan.ml"
             in
            _menhir_goto_assumption _menhir_env _menhir_stack _menhir_s _v) : 'freshtv306)) : 'freshtv308)
        | VARX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv313 * _menhir_state)) = Obj.magic _menhir_stack in
=======
# 108 "parserLan.mly"
 ( Constr("gammaAddX", []) )
# 975 "parserLan.ml"
             in
            _menhir_goto_assumption _menhir_env _menhir_stack _menhir_s _v) : 'freshtv296)) : 'freshtv298)
        | VARX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv303 * _menhir_state)) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
                let (_menhir_stack : (('freshtv309 * _menhir_state))) = Obj.magic _menhir_stack in
=======
                let (_menhir_stack : (('freshtv299 * _menhir_state))) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EXPCTX ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState52
                | LEFTPAR ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState52
                | VALUECTX ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState52
                | VARBIGX ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState52
                | VARTERM _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
                | VARX ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState52
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
<<<<<<< HEAD
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv310)
=======
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv300)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
                let (_menhir_stack : (('freshtv311 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)) : 'freshtv314)
=======
                let (_menhir_stack : (('freshtv301 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv302)) : 'freshtv304)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ('freshtv315 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv316)) : 'freshtv318)
    | MID | TURNSTYLE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv319 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_assumption = 
# 107 "parserLan.mly"
    ( LangVar "Gamma" )
# 1031 "parserLan.ml"
         in
        _menhir_goto_assumption _menhir_env _menhir_stack _menhir_s _v) : 'freshtv320)
=======
            let (_menhir_stack : ('freshtv305 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv306)) : 'freshtv308)
    | MID | TURNSTYLE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv309 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_assumption = 
# 104 "parserLan.mly"
    ( LangVar "Gamma" )
# 1028 "parserLan.ml"
         in
        _menhir_goto_assumption _menhir_env _menhir_stack _menhir_s _v) : 'freshtv310)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : 'freshtv321 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv322)
=======
        let (_menhir_stack : 'freshtv311 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d

and _menhir_goto_grammarLine : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_grammarLine -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
    let (_menhir_stack : 'freshtv303 * _menhir_state * 'tv_grammarLine) = Obj.magic _menhir_stack in
=======
    let (_menhir_stack : 'freshtv293 * _menhir_state * 'tv_grammarLine) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VARTERM _v ->
<<<<<<< HEAD
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | DOT ->
        _menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv304)

and _menhir_reduce48 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 1062 "parserLan.ml"
=======
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | DOT ->
        _menhir_reduce20 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv294)

and _menhir_reduce47 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 1059 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (var : (
# 6 "parserLan.mly"
       (string)
<<<<<<< HEAD
# 1068 "parserLan.ml"
    ))) = _menhir_stack in
    let _v : 'tv_term = 
# 63 "parserLan.mly"
    ( LangVar(var) )
# 1073 "parserLan.ml"
=======
# 1065 "parserLan.ml"
    ))) = _menhir_stack in
    let _v : 'tv_term = 
# 62 "parserLan.mly"
    ( LangVar(var) )
# 1070 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v

and _menhir_run10 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RIGHTPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : ('freshtv299 * _menhir_state)) = Obj.magic _menhir_stack in
=======
        let (_menhir_stack : ('freshtv289 * _menhir_state)) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | LEFTPAR ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | VALUECTX ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | VARBIGX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | VARTERM _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | VARX ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
<<<<<<< HEAD
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv300)
=======
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv290)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : ('freshtv301 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv302)

and _menhir_reduce25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
=======
        let (_menhir_stack : ('freshtv291 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)

and _menhir_reduce24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_term_ = 
# 185 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
<<<<<<< HEAD
# 1117 "parserLan.ml"
=======
# 1114 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
     in
    _menhir_goto_list_term_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run24 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RIGHTPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : ('freshtv295 * _menhir_state)) = Obj.magic _menhir_stack in
=======
        let (_menhir_stack : ('freshtv285 * _menhir_state)) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LEFTPAR ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | VALUECTX ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | VARBIGX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | VARTERM _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | VARX ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
<<<<<<< HEAD
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25) : 'freshtv296)
=======
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25) : 'freshtv286)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : ('freshtv297 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv298)
=======
        let (_menhir_stack : ('freshtv287 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv288)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d

and _menhir_goto_term : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_term -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : ((('freshtv191 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
        let (_menhir_stack : ((('freshtv187 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13
<<<<<<< HEAD
        | AND | COLON | COMMA | DOT | EQUAL | EXPCTX | LABELEDSTEP | LEFTPAR | MID | NOSTEP | PROVIDED | RIGHTPAR | RIGHTSQUARE | STEP | SUBSTBAR | SUBTYPING | TURNSTYLE | VALUECTX | VARBIGX | VARTERM _ | VARX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv189 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
        | AND | COLON | COMMA | DOT | EXPCTX | LABELEDSTEP | LEFTPAR | MID | NOSTEP | PROVIDED | RIGHTPAR | RIGHTSQUARE | STEP | SUBSTBAR | SUBTYPING | TURNSTYLE | VALUECTX | VARBIGX | VARTERM _ | VARX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv185 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_term)) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_term = 
<<<<<<< HEAD
# 65 "parserLan.mly"
    ( Abs(t) )
# 1178 "parserLan.ml"
             in
            _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv190)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv192)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv195 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
# 64 "parserLan.mly"
    ( Abs(t) )
# 1175 "parserLan.ml"
             in
            _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv186)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv188)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv191 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | SUBSTBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : (('freshtv193 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : (('freshtv189 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            let (_menhir_s : _menhir_state) = MenhirState15 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
<<<<<<< HEAD
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv194)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv196)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv201 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv190)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv192)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv197 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | RIGHTSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : (((('freshtv199 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState17 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv197 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : (((('freshtv195 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState17 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv193 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            let (_ : _menhir_state) = _menhir_s in
            ((let (((((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)), _), _, (t3 : 'tv_term)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_term = 
<<<<<<< HEAD
# 73 "parserLan.mly"
      ( Substitution(t1,t2,t3) )
# 1244 "parserLan.ml"
             in
            _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv198)) : 'freshtv200)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv202)
    | MenhirState46 | MenhirState20 | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv203 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
# 72 "parserLan.mly"
      ( Substitution(t1,t2,t3) )
# 1241 "parserLan.ml"
             in
            _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv194)) : 'freshtv196)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv198)
    | MenhirState46 | MenhirState20 | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv199 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | LEFTPAR ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | VALUECTX ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | VARBIGX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | VARTERM _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
        | VARX ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | RIGHTPAR ->
<<<<<<< HEAD
            _menhir_reduce25 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv204)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv207 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
            _menhir_reduce24 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv200)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv203 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState26
<<<<<<< HEAD
        | AND | COLON | COMMA | DOT | EQUAL | EXPCTX | LABELEDSTEP | LEFTPAR | MID | NOSTEP | PROVIDED | RIGHTPAR | RIGHTSQUARE | STEP | SUBSTBAR | SUBTYPING | TURNSTYLE | VALUECTX | VARBIGX | VARTERM _ | VARX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv205 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
        | AND | COLON | COMMA | DOT | EXPCTX | LABELEDSTEP | LEFTPAR | MID | NOSTEP | PROVIDED | RIGHTPAR | RIGHTSQUARE | STEP | SUBSTBAR | SUBTYPING | TURNSTYLE | VALUECTX | VARBIGX | VARTERM _ | VARX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv201 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_term)) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_term = 
<<<<<<< HEAD
# 67 "parserLan.mly"
   ( AbsType(t) )
# 1295 "parserLan.ml"
             in
            _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv206)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv208)
    | MenhirState4 | MenhirState30 | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv213 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
# 66 "parserLan.mly"
   ( AbsType(t) )
# 1292 "parserLan.ml"
             in
            _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv202)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv204)
    | MenhirState4 | MenhirState30 | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | MID ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : 'freshtv209 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : 'freshtv205 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            let (_menhir_s : _menhir_state) = MenhirState29 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
<<<<<<< HEAD
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv210)
        | DOT | VARTERM _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv211 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv206)
        | DOT | VARTERM _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv207 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            ((let (_menhir_stack, _menhir_s, (x : 'tv_term)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_MID_term_ = 
# 215 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [ x ] )
<<<<<<< HEAD
# 1341 "parserLan.ml"
             in
            _menhir_goto_separated_nonempty_list_MID_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv212)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29) : 'freshtv214)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv217 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
# 1338 "parserLan.ml"
             in
            _menhir_goto_separated_nonempty_list_MID_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv208)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29) : 'freshtv210)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv213 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ('freshtv215 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_term)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_formula = 
# 89 "parserLan.mly"
 ( Formula("value", [t]) )
# 1364 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv216)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv218)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv221 * _menhir_state)))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : ('freshtv211 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_term)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_formula = 
# 88 "parserLan.mly"
 ( Formula("value", [t]) )
# 1361 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv212)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv214)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv217 * _menhir_state)))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | MID | TURNSTYLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : (((('freshtv219 * _menhir_state)))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : (((('freshtv215 * _menhir_state)))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_term)) = _menhir_stack in
            let _4 = () in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_assumption = 
<<<<<<< HEAD
# 109 "parserLan.mly"
    ( Constr("gammaAddx", [t]) )
# 1390 "parserLan.ml"
             in
            _menhir_goto_assumption _menhir_env _menhir_stack _menhir_s _v) : 'freshtv220)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv222)
    | MenhirState88 | MenhirState83 | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv235 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
# 106 "parserLan.mly"
    ( Constr("gammaAddx", [t]) )
# 1387 "parserLan.ml"
             in
            _menhir_goto_assumption _menhir_env _menhir_stack _menhir_s _v) : 'freshtv216)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv218)
    | MenhirState86 | MenhirState81 | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv229 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : 'freshtv223 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState55 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv224)
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv225 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : 'freshtv219 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            let (_menhir_s : _menhir_state) = MenhirState55 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
<<<<<<< HEAD
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv226)
        | LABELEDSTEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv227 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv220)
        | LABELEDSTEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv221 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            let (_menhir_s : _menhir_state) = MenhirState55 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
<<<<<<< HEAD
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv228)
=======
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv222)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | NOSTEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : 'freshtv229 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : 'freshtv223 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            let (_menhir_s : _menhir_state) = MenhirState55 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
<<<<<<< HEAD
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv230)
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv231 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv224)
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv225 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            let (_menhir_s : _menhir_state) = MenhirState55 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
<<<<<<< HEAD
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58) : 'freshtv232)
        | SUBTYPING ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv233 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58) : 'freshtv226)
        | SUBTYPING ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv227 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            let (_menhir_s : _menhir_state) = MenhirState55 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
<<<<<<< HEAD
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv234)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv236)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv239 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv228)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv230)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv233 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : (('freshtv237 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_formula = 
# 99 "parserLan.mly"
    ( Formula("subtype", [t1 ; t2]) )
# 1569 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv238)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57) : 'freshtv240)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv243 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : (('freshtv231 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_formula = 
# 98 "parserLan.mly"
    ( Formula("subtype", [t1 ; t2]) )
# 1542 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv232)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57) : 'freshtv234)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv237 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : (('freshtv241 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_formula = 
# 85 "parserLan.mly"
    ( Formula("step", [t1 ; t2]) )
# 1592 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv242)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv244)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv249 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : (('freshtv235 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_formula = 
# 84 "parserLan.mly"
    ( Formula("step", [t1 ; t2]) )
# 1565 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv236)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv238)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv243 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : (('freshtv247 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : (('freshtv241 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            let (_menhir_s : _menhir_state) = MenhirState61 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | AND | DOT | PROVIDED ->
                let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
                let (_menhir_stack : ((('freshtv245 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
=======
                let (_menhir_stack : ((('freshtv239 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
                ((let ((((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)), _) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _v : 'tv_formula = 
<<<<<<< HEAD
# 93 "parserLan.mly"
    ( Formula("nstep", [t1 ; t2]) )
# 1636 "parserLan.ml"
                 in
                _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv246)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62) : 'freshtv248)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv250)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv253 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
# 92 "parserLan.mly"
    ( Formula("nstep", [t1 ; t2]) )
# 1609 "parserLan.ml"
                 in
                _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62) : 'freshtv242)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv244)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv247 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : (((('freshtv251 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : (((('freshtv245 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            ((let (((((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)), _), _, (t3 : 'tv_term)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_formula = 
<<<<<<< HEAD
# 95 "parserLan.mly"
    ( Formula("nstep", [t1 ; t2 ; t3]) )
# 1664 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv254)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv257 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
# 94 "parserLan.mly"
    ( Formula("nstep", [t1 ; t2 ; t3]) )
# 1637 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv246)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv248)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv251 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : (('freshtv255 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : (('freshtv249 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            let (_menhir_s : _menhir_state) = MenhirState65 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
<<<<<<< HEAD
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv256)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv258)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv261 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv250)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv252)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv255 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : (((('freshtv259 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : (((('freshtv253 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            ((let (((((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)), _), _, (t3 : 'tv_term)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_formula = 
<<<<<<< HEAD
# 91 "parserLan.mly"
    ( Formula("step", [t1 ; t2 ; t3]) )
# 1724 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv260)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv262)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv265 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
# 90 "parserLan.mly"
    ( Formula("step", [t1 ; t2 ; t3]) )
# 1697 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv254)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv256)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv259 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState69
<<<<<<< HEAD
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv263 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_formula = 
# 101 "parserLan.mly"
      ( Formula("equal", [t1 ; t2]) )
# 1747 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv264)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv266)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv269 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv267 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv257 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState69 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv258)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv260)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv263 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv261 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            let (_menhir_s : _menhir_state) = MenhirState71 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
<<<<<<< HEAD
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72) : 'freshtv268)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv270)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv273 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv271 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState73 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv272)
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73) : 'freshtv274)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv277 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv275 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72) : 'freshtv262)
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv264)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv267 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv265 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            ((let (((((((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)), _), _, (t3 : 'tv_term)), _), _, (t4 : 'tv_term)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_formula = 
<<<<<<< HEAD
# 87 "parserLan.mly"
    ( Formula("step", [t1 ; t2 ; t3 ; t4]) )
# 1844 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv276)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv278)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv281 * _menhir_state * 'tv_loption_separated_nonempty_list_MID_assumption__)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
# 86 "parserLan.mly"
    ( Formula("step", [t1 ; t2 ; t3 ; t4]) )
# 1794 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73) : 'freshtv268)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv271 * _menhir_state * 'tv_loption_separated_nonempty_list_MID_assumption__)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : (('freshtv279 * _menhir_state * 'tv_loption_separated_nonempty_list_MID_assumption__)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState79 in
=======
            let (_menhir_stack : (('freshtv269 * _menhir_state * 'tv_loption_separated_nonempty_list_MID_assumption__)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState77 in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
<<<<<<< HEAD
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80) : 'freshtv280)
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv282)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv285 * _menhir_state * 'tv_loption_separated_nonempty_list_MID_assumption__)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv270)
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv272)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv275 * _menhir_state * 'tv_loption_separated_nonempty_list_MID_assumption__)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
<<<<<<< HEAD
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv283 * _menhir_state * 'tv_loption_separated_nonempty_list_MID_assumption__)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv273 * _menhir_state * 'tv_loption_separated_nonempty_list_MID_assumption__)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            ((let ((((_menhir_stack, _menhir_s, (xs0 : 'tv_loption_separated_nonempty_list_MID_assumption__)), _, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_formula = let assumptions =
              let xs = xs0 in
              
# 206 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( xs )
<<<<<<< HEAD
# 1906 "parserLan.ml"
              
            in
            
# 103 "parserLan.mly"
    ( Formula("typeOf", assumptions @ [t1 ; t2]) )
# 1912 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv284)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81) : 'freshtv286)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv289 * _menhir_state * 'tv_assumption)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
# 1856 "parserLan.ml"
              
            in
            
# 100 "parserLan.mly"
    ( Formula("typeOf", assumptions @ [t1 ; t2]) )
# 1862 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv276)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv279 * _menhir_state * 'tv_assumption)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : (('freshtv287 * _menhir_state * 'tv_assumption)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState92 in
=======
            let (_menhir_stack : (('freshtv277 * _menhir_state * 'tv_assumption)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState90 in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
<<<<<<< HEAD
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv288)
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv290)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv293 * _menhir_state * 'tv_assumption)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv278)
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv280)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv283 * _menhir_state * 'tv_assumption)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
<<<<<<< HEAD
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv291 * _menhir_state * 'tv_assumption)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
=======
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv281 * _menhir_state * 'tv_assumption)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            ((let ((((_menhir_stack, _menhir_s, (gammaTerm : 'tv_assumption)), _, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_formula = 
<<<<<<< HEAD
# 83 "parserLan.mly"
    ( Formula("typeOf", [gammaTerm ; t1 ; t2]) )
# 1972 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv292)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv294)
=======
# 82 "parserLan.mly"
    ( Formula("typeOf", [gammaTerm ; t1 ; t2]) )
# 1922 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv284)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

<<<<<<< HEAD
and _menhir_reduce23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
=======
and _menhir_reduce22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_rule_ = 
# 185 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
<<<<<<< HEAD
# 1992 "parserLan.ml"
=======
# 1942 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
     in
    _menhir_goto_list_rule_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VARTERM _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : 'freshtv185 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 6 "parserLan.mly"
       (string)
# 2008 "parserLan.ml"
=======
        let (_menhir_stack : 'freshtv181 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 6 "parserLan.mly"
       (string)
# 1958 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHTSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ('freshtv181 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 2019 "parserLan.ml"
=======
            let (_menhir_stack : ('freshtv177 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 1969 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | GAMMA ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | LEFTPAR ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | VALUEPRED ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | VARTERM _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | TURNSTYLE ->
<<<<<<< HEAD
                _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41) : 'freshtv182)
=======
                _menhir_reduce28 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41) : 'freshtv178)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : ('freshtv183 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 2053 "parserLan.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)) : 'freshtv186)
=======
            let (_menhir_stack : ('freshtv179 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 2003 "parserLan.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)) : 'freshtv182)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : 'freshtv187 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
=======
        let (_menhir_stack : 'freshtv183 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d

and _menhir_goto_loption_separated_nonempty_list_MID_term__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_MID_term__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : 'freshtv175) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_separated_nonempty_list_MID_term__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv173) = Obj.magic _menhir_stack in
=======
        let (_menhir_stack : 'freshtv171) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_separated_nonempty_list_MID_term__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv169) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((xs0 : 'tv_loption_separated_nonempty_list_MID_term__) : 'tv_loption_separated_nonempty_list_MID_term__) = _v in
        ((let _v : 'tv_option_separated_list_MID_term__ = let x =
          let xs = xs0 in
          
# 206 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( xs )
<<<<<<< HEAD
# 2082 "parserLan.ml"
=======
# 2032 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
          
        in
        
# 102 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( Some x )
<<<<<<< HEAD
# 2088 "parserLan.ml"
         in
        _menhir_goto_option_separated_list_MID_term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv174)) : 'freshtv176)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv179 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2096 "parserLan.ml"
=======
# 2038 "parserLan.ml"
         in
        _menhir_goto_option_separated_list_MID_term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv170)) : 'freshtv172)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv175 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2046 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        )) * 'tv_option_VARTERM_)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_separated_nonempty_list_MID_term__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : (('freshtv177 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2104 "parserLan.ml"
=======
        let (_menhir_stack : (('freshtv173 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2054 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        )) * 'tv_option_VARTERM_)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs0 : 'tv_loption_separated_nonempty_list_MID_term__) : 'tv_loption_separated_nonempty_list_MID_term__) = _v in
        ((let ((_menhir_stack, _menhir_s, (category : (
# 6 "parserLan.mly"
       (string)
<<<<<<< HEAD
# 2111 "parserLan.ml"
=======
# 2061 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ))), (metavar : 'tv_option_VARTERM_)) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_grammarLine = let ts =
          let xs = xs0 in
          
# 206 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( xs )
<<<<<<< HEAD
# 2119 "parserLan.ml"
          
        in
        
# 117 "parserLan.mly"
 ( GrammarLine(category,metavar, Some ts) )
# 2125 "parserLan.ml"
         in
        _menhir_goto_grammarLine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)) : 'freshtv180)
=======
# 2069 "parserLan.ml"
          
        in
        
# 114 "parserLan.mly"
 ( GrammarLine(category,metavar, Some ts) )
# 2075 "parserLan.ml"
         in
        _menhir_goto_grammarLine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv174)) : 'freshtv176)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_separated_list_MID_term__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_option_separated_list_MID_term__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
    let (_menhir_stack : (((('freshtv171 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2137 "parserLan.ml"
=======
    let (_menhir_stack : (((('freshtv167 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2087 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    )) * 'tv_option_VARTERM_)) * _menhir_state)) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_option_separated_list_MID_term__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
    let (_menhir_stack : (((('freshtv169 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2145 "parserLan.ml"
=======
    let (_menhir_stack : (((('freshtv165 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2095 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    )) * 'tv_option_VARTERM_)) * _menhir_state)) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    let ((ts : 'tv_option_separated_list_MID_term__) : 'tv_option_separated_list_MID_term__) = _v in
    ((let (((_menhir_stack, _menhir_s, (category : (
# 6 "parserLan.mly"
       (string)
<<<<<<< HEAD
# 2152 "parserLan.ml"
=======
# 2102 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    ))), (metavar : 'tv_option_VARTERM_)), _) = _menhir_stack in
    let _5 = () in
    let _4 = () in
    let _3 = () in
    let _v : 'tv_grammarLine = 
<<<<<<< HEAD
# 119 "parserLan.mly"
 ( if category = "C" then GrammarLine("Context",Some "C",ts) else GrammarLine(category,metavar,ts) )
# 2160 "parserLan.ml"
     in
    _menhir_goto_grammarLine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv170)) : 'freshtv172)
=======
# 116 "parserLan.mly"
 ( if category = "C" then GrammarLine("Context",Some "C",ts) else GrammarLine(category,metavar,ts) )
# 2110 "parserLan.ml"
     in
    _menhir_goto_grammarLine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)) : 'freshtv168)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
    let (_menhir_stack : 'freshtv167) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_term = 
# 59 "parserLan.mly"
    ( BoundVar )
# 2174 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv168)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parserLan.mly"
       (string)
# 2181 "parserLan.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce48 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv165) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_term = 
# 61 "parserLan.mly"
    ( BoundTypeVar )
# 2198 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
=======
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    let (_menhir_stack : 'freshtv163) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_term = 
<<<<<<< HEAD
# 69 "parserLan.mly"
      ( LangVar "v" )
# 2212 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv164)

=======
# 58 "parserLan.mly"
    ( BoundVar )
# 2124 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv164)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parserLan.mly"
       (string)
# 2131 "parserLan.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce47 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv161) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_term = 
# 60 "parserLan.mly"
    ( BoundTypeVar )
# 2148 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv162)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv159) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_term = 
# 68 "parserLan.mly"
      ( LangVar "v" )
# 2162 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv160)

>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VARBIGX ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
    | VARLEX _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : 'freshtv159 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 5 "parserLan.mly"
       (string)
# 2230 "parserLan.ml"
=======
        let (_menhir_stack : 'freshtv155 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 5 "parserLan.mly"
       (string)
# 2180 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LEFTPAR ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | VALUECTX ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | VARBIGX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | VARTERM _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | VARX ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | RIGHTPAR ->
<<<<<<< HEAD
            _menhir_reduce25 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv160)
=======
            _menhir_reduce24 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv156)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    | VARX ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : 'freshtv161 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
=======
        let (_menhir_stack : 'freshtv157 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
    let (_menhir_stack : 'freshtv157) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_term = 
# 71 "parserLan.mly"
      ( LangVar "e" )
# 2274 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv158)
=======
    let (_menhir_stack : 'freshtv153) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_term = 
# 70 "parserLan.mly"
      ( LangVar "e" )
# 2224 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv154)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d

and _menhir_goto_list_grammarLine_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_grammarLine_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : 'freshtv151 * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
=======
        let (_menhir_stack : 'freshtv147 * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : 'freshtv147 * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : 'freshtv143 * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LEFTSQUARE ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | EOF ->
<<<<<<< HEAD
                _menhir_reduce23 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38) : 'freshtv148)
=======
                _menhir_reduce22 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38) : 'freshtv144)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : 'freshtv149 * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)) : 'freshtv152)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv155 * _menhir_state * 'tv_grammarLine) * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv153 * _menhir_state * 'tv_grammarLine) * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : 'freshtv145 * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)) : 'freshtv148)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv151 * _menhir_state * 'tv_grammarLine) * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv149 * _menhir_state * 'tv_grammarLine) * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_grammarLine)), _, (xs : 'tv_list_grammarLine_)) = _menhir_stack in
        let _v : 'tv_list_grammarLine_ = 
# 187 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
<<<<<<< HEAD
# 2318 "parserLan.ml"
         in
        _menhir_goto_list_grammarLine_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv154)) : 'freshtv156)
=======
# 2268 "parserLan.ml"
         in
        _menhir_goto_list_grammarLine_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv150)) : 'freshtv152)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_VARTERM_ : _menhir_env -> 'ttv_tail -> 'tv_option_VARTERM_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
    let (_menhir_stack : ('freshtv145 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2331 "parserLan.ml"
=======
    let (_menhir_stack : ('freshtv141 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2281 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    )) * 'tv_option_VARTERM_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | GRAMMARASSIGN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : ('freshtv141 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2341 "parserLan.ml"
=======
        let (_menhir_stack : ('freshtv137 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2291 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        )) * 'tv_option_VARTERM_) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EMPTYCTX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : (('freshtv137 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2351 "parserLan.ml"
=======
            let (_menhir_stack : (('freshtv133 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2301 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            )) * 'tv_option_VARTERM_)) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState4 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | MID ->
                let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
                let (_menhir_stack : ((('freshtv133 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2363 "parserLan.ml"
=======
                let (_menhir_stack : ((('freshtv129 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2313 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
                )) * 'tv_option_VARTERM_)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EXPCTX ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                | LEFTPAR ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                | VALUECTX ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                | VARBIGX ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                | VARTERM _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
                | VARX ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                | DOT ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
                    let (_menhir_stack : 'freshtv131) = Obj.magic _menhir_stack in
=======
                    let (_menhir_stack : 'freshtv127) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
                    let (_menhir_s : _menhir_state) = MenhirState28 in
                    ((let _v : 'tv_option_separated_list_MID_term__ = 
# 100 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( None )
<<<<<<< HEAD
# 2387 "parserLan.ml"
                     in
                    _menhir_goto_option_separated_list_MID_term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv132)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28) : 'freshtv134)
=======
# 2337 "parserLan.ml"
                     in
                    _menhir_goto_option_separated_list_MID_term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28) : 'freshtv130)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
                let (_menhir_stack : ((('freshtv135 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2401 "parserLan.ml"
                )) * 'tv_option_VARTERM_)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)) : 'freshtv138)
=======
                let (_menhir_stack : ((('freshtv131 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2351 "parserLan.ml"
                )) * 'tv_option_VARTERM_)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)) : 'freshtv134)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        | EXPCTX ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | LEFTPAR ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | VALUECTX ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | VARBIGX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | VARTERM _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | VARX ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
            let (_menhir_stack : 'freshtv139) = Obj.magic _menhir_stack in
=======
            let (_menhir_stack : 'freshtv135) = Obj.magic _menhir_stack in
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
            let (_menhir_s : _menhir_state) = MenhirState4 in
            ((let _v : 'tv_loption_separated_nonempty_list_MID_term__ = 
# 128 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
<<<<<<< HEAD
# 2424 "parserLan.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_MID_term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv140)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv142)
=======
# 2374 "parserLan.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_MID_term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv138)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
<<<<<<< HEAD
        let (_menhir_stack : ('freshtv143 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2438 "parserLan.ml"
        )) * 'tv_option_VARTERM_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)) : 'freshtv146)
=======
        let (_menhir_stack : ('freshtv139 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2388 "parserLan.ml"
        )) * 'tv_option_VARTERM_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)) : 'freshtv142)
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
<<<<<<< HEAD
    | MenhirState105 ->
=======
    | MenhirState103 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * 'tv_grammarLine) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
<<<<<<< HEAD
    | MenhirState100 ->
=======
    | MenhirState98 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state * 'tv_rule) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
<<<<<<< HEAD
    | MenhirState95 ->
=======
    | MenhirState93 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv23 * _menhir_state * 'tv_assumption)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
<<<<<<< HEAD
    | MenhirState94 ->
=======
    | MenhirState92 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv25 * _menhir_state * 'tv_assumption)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
<<<<<<< HEAD
    | MenhirState93 ->
=======
    | MenhirState91 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv27 * _menhir_state * 'tv_assumption)) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
<<<<<<< HEAD
    | MenhirState92 ->
=======
    | MenhirState90 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv29 * _menhir_state * 'tv_assumption)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
<<<<<<< HEAD
    | MenhirState91 ->
=======
    | MenhirState89 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state * 'tv_assumption)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
<<<<<<< HEAD
    | MenhirState88 ->
=======
    | MenhirState86 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
<<<<<<< HEAD
    | MenhirState83 ->
=======
    | MenhirState81 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv35 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
<<<<<<< HEAD
# 2491 "parserLan.ml"
        ))) * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState81 ->
=======
# 2441 "parserLan.ml"
        ))) * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState79 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv37 * _menhir_state * 'tv_loption_separated_nonempty_list_MID_assumption__)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
<<<<<<< HEAD
    | MenhirState80 ->
=======
    | MenhirState78 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv39 * _menhir_state * 'tv_loption_separated_nonempty_list_MID_assumption__)) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
<<<<<<< HEAD
    | MenhirState79 ->
=======
    | MenhirState77 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv41 * _menhir_state * 'tv_loption_separated_nonempty_list_MID_assumption__)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
<<<<<<< HEAD
    | MenhirState78 ->
=======
    | MenhirState76 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * 'tv_loption_separated_nonempty_list_MID_assumption__)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
<<<<<<< HEAD
    | MenhirState75 ->
=======
    | MenhirState73 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv45 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
<<<<<<< HEAD
    | MenhirState74 ->
=======
    | MenhirState72 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv47 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
<<<<<<< HEAD
    | MenhirState73 ->
=======
    | MenhirState71 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv49 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
<<<<<<< HEAD
    | MenhirState72 ->
=======
    | MenhirState70 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv51 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
<<<<<<< HEAD
    | MenhirState71 ->
=======
    | MenhirState69 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv53 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
<<<<<<< HEAD
    | MenhirState70 ->
=======
    | MenhirState68 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
<<<<<<< HEAD
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv57 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv61 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv63 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv65 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv69 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv71 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState61 ->
=======
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv57 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv59 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv61 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv65 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv67 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv69 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState59 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv73 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
<<<<<<< HEAD
    | MenhirState60 ->
=======
    | MenhirState58 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
<<<<<<< HEAD
    | MenhirState59 ->
=======
    | MenhirState57 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv77 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
<<<<<<< HEAD
    | MenhirState58 ->
=======
    | MenhirState56 ->
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
<<<<<<< HEAD
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv81 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv87 * _menhir_state)))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv89 * _menhir_state)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 2635 "parserLan.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv97 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 2654 "parserLan.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state * 'tv_list_grammarLine_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv105 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2678 "parserLan.ml"
        )) * 'tv_option_VARTERM_)) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv107 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv109 * _menhir_state))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 2702 "parserLan.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv115 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv117 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv119 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv121 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv123 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv125 * _menhir_state))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv127 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2741 "parserLan.ml"
        )) * 'tv_option_VARTERM_)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv130)

and _menhir_reduce21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
=======
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv83 * _menhir_state)))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv85 * _menhir_state)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 2575 "parserLan.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv93 * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 2594 "parserLan.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * 'tv_list_grammarLine_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv101 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2618 "parserLan.ml"
        )) * 'tv_option_VARTERM_)) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv103 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv105 * _menhir_state))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv109 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 2642 "parserLan.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv111 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv113 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv115 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv117 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv119 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv121 * _menhir_state))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv123 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2681 "parserLan.ml"
        )) * 'tv_option_VARTERM_)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv126)

and _menhir_reduce20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_grammarLine_ = 
# 185 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
<<<<<<< HEAD
# 2755 "parserLan.ml"
=======
# 2695 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
     in
    _menhir_goto_list_grammarLine_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parserLan.mly"
       (string)
<<<<<<< HEAD
# 2762 "parserLan.ml"
=======
# 2702 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VARTERM _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
        let (_v : (
# 6 "parserLan.mly"
       (string)
<<<<<<< HEAD
# 2775 "parserLan.ml"
=======
# 2715 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
        let ((x : (
# 6 "parserLan.mly"
       (string)
<<<<<<< HEAD
# 2783 "parserLan.ml"
        )) : (
# 6 "parserLan.mly"
       (string)
# 2787 "parserLan.ml"
=======
# 2723 "parserLan.ml"
        )) : (
# 6 "parserLan.mly"
       (string)
# 2727 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        )) = _v in
        ((let _v : 'tv_option_VARTERM_ = 
# 102 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( Some x )
<<<<<<< HEAD
# 2792 "parserLan.ml"
=======
# 2732 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
         in
        _menhir_goto_option_VARTERM_ _menhir_env _menhir_stack _v) : 'freshtv12)) : 'freshtv14)
    | GRAMMARASSIGN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_VARTERM_ = 
# 100 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( None )
<<<<<<< HEAD
# 2801 "parserLan.ml"
=======
# 2741 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
         in
        _menhir_goto_option_VARTERM_ _menhir_env _menhir_stack _v) : 'freshtv16)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
<<<<<<< HEAD
# 2811 "parserLan.ml"
=======
# 2751 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)

and _menhir_goto_fileLan : _menhir_env -> 'ttv_tail -> _menhir_state -> (
<<<<<<< HEAD
# 41 "parserLan.mly"
      (Language.language)
# 2819 "parserLan.ml"
=======
# 40 "parserLan.mly"
      (Language.language)
# 2759 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
<<<<<<< HEAD
# 41 "parserLan.mly"
      (Language.language)
# 2828 "parserLan.ml"
=======
# 40 "parserLan.mly"
      (Language.language)
# 2768 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
<<<<<<< HEAD
# 41 "parserLan.mly"
      (Language.language)
# 2836 "parserLan.ml"
    )) : (
# 41 "parserLan.mly"
      (Language.language)
# 2840 "parserLan.ml"
=======
# 40 "parserLan.mly"
      (Language.language)
# 2776 "parserLan.ml"
    )) : (
# 40 "parserLan.mly"
      (Language.language)
# 2780 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    )) = _v in
    (Obj.magic _1 : 'freshtv8)) : 'freshtv10)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and fileLan : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
<<<<<<< HEAD
# 41 "parserLan.mly"
      (Language.language)
# 2859 "parserLan.ml"
=======
# 40 "parserLan.mly"
      (Language.language)
# 2799 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        ((let _1 = () in
        let _v : (
<<<<<<< HEAD
# 41 "parserLan.mly"
      (Language.language)
# 2889 "parserLan.ml"
        ) = 
# 47 "parserLan.mly"
    ( Language([], []) )
# 2893 "parserLan.ml"
=======
# 40 "parserLan.mly"
      (Language.language)
# 2829 "parserLan.ml"
        ) = 
# 46 "parserLan.mly"
    ( Language([], []) )
# 2833 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
         in
        _menhir_goto_fileLan _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2)) : 'freshtv4)
    | VARTERM _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | DOT ->
<<<<<<< HEAD
        _menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) MenhirState0
=======
        _menhir_reduce20 _menhir_env (Obj.magic _menhir_stack) MenhirState0
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv6))

# 219 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
  


<<<<<<< HEAD
# 2909 "parserLan.ml"
=======
# 2849 "parserLan.ml"
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d
