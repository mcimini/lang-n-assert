
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | TRUE
    | SOUNDVARIANCE
    | RIGHTSQUARE
    | RIGHTPAR
    | QUOTE
    | NUM of (
# 6 "parser.mly"
       (string)
# 16 "parser.ml"
  )
    | NODUPLI
    | MUTABLE
    | LEFTSQUARE
    | LEFTPAR
    | INVARIANT
    | INDUCTIVE
    | ID of (
# 5 "parser.mly"
       (string)
# 27 "parser.ml"
  )
    | ERRORANY
    | ERROR
    | ERR
    | EOF
    | EFF
    | CTX
    | CONTRARESP
    | CONTRA
    | COMMA
  
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
  | MenhirState61
  | MenhirState44
  | MenhirState30
  | MenhirState21
  | MenhirState17

# 1 "parser.mly"
  
  open Logic

# 64 "parser.ml"

let rec _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_loption_separated_nonempty_list_COMMA_number__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_number__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv251)) * (
# 5 "parser.mly"
       (string)
# 80 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_number__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv247)) * (
# 5 "parser.mly"
       (string)
# 90 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_number__) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv245)) * (
# 5 "parser.mly"
       (string)
# 96 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_number__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, (c : (
# 5 "parser.mly"
       (string)
# 101 "parser.ml"
            ))), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_number__)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_assertion = let is =
              let xs = xs0 in
              
# 206 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( xs )
# 112 "parser.ml"
              
            in
            
# 66 "parser.mly"
 ( Invariant(c,is) )
# 118 "parser.ml"
             in
            _menhir_goto_assertion _menhir_env _menhir_stack _v) : 'freshtv246)) : 'freshtv248)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv249)) * (
# 5 "parser.mly"
       (string)
# 128 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_number__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)) : 'freshtv252)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv259)) * (
# 5 "parser.mly"
       (string)
# 137 "parser.ml"
        ))) * (
# 5 "parser.mly"
       (string)
# 141 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_number__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv255)) * (
# 5 "parser.mly"
       (string)
# 151 "parser.ml"
            ))) * (
# 5 "parser.mly"
       (string)
# 155 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_number__) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv253)) * (
# 5 "parser.mly"
       (string)
# 161 "parser.ml"
            ))) * (
# 5 "parser.mly"
       (string)
# 165 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_number__) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, (metavar : (
# 5 "parser.mly"
       (string)
# 170 "parser.ml"
            ))), (c : (
# 5 "parser.mly"
       (string)
# 174 "parser.ml"
            ))), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_number__)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_assertion = let is =
              let xs = xs0 in
              
# 206 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( xs )
# 186 "parser.ml"
              
            in
            
# 48 "parser.mly"
 ( Inductive(metavar,(c,is)) )
# 192 "parser.ml"
             in
            _menhir_goto_assertion _menhir_env _menhir_stack _v) : 'freshtv254)) : 'freshtv256)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv257)) * (
# 5 "parser.mly"
       (string)
# 202 "parser.ml"
            ))) * (
# 5 "parser.mly"
       (string)
# 206 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_number__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv258)) : 'freshtv260)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv267)) * (
# 5 "parser.mly"
       (string)
# 215 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_number__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv263)) * (
# 5 "parser.mly"
       (string)
# 225 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_number__) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv261)) * (
# 5 "parser.mly"
       (string)
# 231 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_number__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, (c : (
# 5 "parser.mly"
       (string)
# 236 "parser.ml"
            ))), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_number__)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_assertion = let is =
              let xs = xs0 in
              
# 206 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( xs )
# 247 "parser.ml"
              
            in
            
# 58 "parser.mly"
 ( Contra(c,is) )
# 253 "parser.ml"
             in
            _menhir_goto_assertion _menhir_env _menhir_stack _v) : 'freshtv262)) : 'freshtv264)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv265)) * (
# 5 "parser.mly"
       (string)
# 263 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_number__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)) : 'freshtv268)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_number_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_number_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState61 | MenhirState30 | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv239) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_number_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv237) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_number_) : 'tv_separated_nonempty_list_COMMA_number_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_number__ = 
# 130 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x )
# 285 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_number__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv238)) : 'freshtv240)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv243 * _menhir_state * 'tv_number)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_number_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv241 * _menhir_state * 'tv_number)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_number_) : 'tv_separated_nonempty_list_COMMA_number_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_number)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_number_ = 
# 217 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 302 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_number_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv242)) : 'freshtv244)
    | _ ->
        _menhir_fail ()

and _menhir_goto_assertion : _menhir_env -> 'ttv_tail -> 'tv_assertion -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv235) = Obj.magic _menhir_stack in
    let (_v : 'tv_assertion) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv233) = Obj.magic _menhir_stack in
    let ((a : 'tv_assertion) : 'tv_assertion) = _v in
    ((let _v : (
# 35 "parser.mly"
      ((Logic.assertion))
# 319 "parser.ml"
    ) = 
# 41 "parser.mly"
   ( a )
# 323 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv231) = _menhir_stack in
    let (_v : (
# 35 "parser.mly"
      ((Logic.assertion))
# 330 "parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv229) = Obj.magic _menhir_stack in
    let (_v : (
# 35 "parser.mly"
      ((Logic.assertion))
# 337 "parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv227) = Obj.magic _menhir_stack in
    let ((_1 : (
# 35 "parser.mly"
      ((Logic.assertion))
# 344 "parser.ml"
    )) : (
# 35 "parser.mly"
      ((Logic.assertion))
# 348 "parser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv228)) : 'freshtv230)) : 'freshtv232)) : 'freshtv234)) : 'freshtv236)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv217)) * (
# 5 "parser.mly"
       (string)
# 360 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv218)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv219)) * (
# 5 "parser.mly"
       (string)
# 368 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv220)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv221)) * (
# 5 "parser.mly"
       (string)
# 376 "parser.ml"
        ))) * (
# 5 "parser.mly"
       (string)
# 380 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv222)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv223 * _menhir_state * 'tv_number)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv225)) * (
# 5 "parser.mly"
       (string)
# 393 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv226)

and _menhir_reduce15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_number__ = 
# 128 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 402 "parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_number__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parser.mly"
       (string)
# 409 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv215) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 6 "parser.mly"
       (string)
# 419 "parser.ml"
    )) : (
# 6 "parser.mly"
       (string)
# 423 "parser.ml"
    )) = _v in
    ((let _v : 'tv_number = 
# 76 "parser.mly"
 ( int_of_string n )
# 428 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv213) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_number) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState61 | MenhirState30 | MenhirState21 | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv203 * _menhir_state * 'tv_number) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv197 * _menhir_state * 'tv_number) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | NUM _v ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv198)
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv199 * _menhir_state * 'tv_number) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_number)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_number_ = 
# 215 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [ x ] )
# 461 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_number_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv200)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv201 * _menhir_state * 'tv_number) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)) : 'freshtv204)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv211)) * (
# 5 "parser.mly"
       (string)
# 476 "parser.ml"
        ))) * _menhir_state * 'tv_number) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv207)) * (
# 5 "parser.mly"
       (string)
# 486 "parser.ml"
            ))) * _menhir_state * 'tv_number) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv205)) * (
# 5 "parser.mly"
       (string)
# 492 "parser.ml"
            ))) * _menhir_state * 'tv_number) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, (op : (
# 5 "parser.mly"
       (string)
# 497 "parser.ml"
            ))), _, (i : 'tv_number)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_assertion = 
# 52 "parser.mly"
 ( HandlesError(op,i) )
# 506 "parser.ml"
             in
            _menhir_goto_assertion _menhir_env _menhir_stack _v) : 'freshtv206)) : 'freshtv208)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv209)) * (
# 5 "parser.mly"
       (string)
# 516 "parser.ml"
            ))) * _menhir_state * 'tv_number) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)) : 'freshtv212)) : 'freshtv214)) : 'freshtv216)

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

and commandLine : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 35 "parser.mly"
      ((Logic.assertion))
# 536 "parser.ml"
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
    let (_menhir_stack : 'freshtv195) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONTRA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv5)) = Obj.magic _menhir_stack in
                let (_v : (
# 5 "parser.mly"
       (string)
# 573 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | COMMA ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv1)) * (
# 5 "parser.mly"
       (string)
# 584 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | NUM _v ->
                        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
                    | RIGHTPAR ->
                        _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack) MenhirState61
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv2)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv3)) * (
# 5 "parser.mly"
       (string)
# 604 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv4)) : 'freshtv6)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv7)) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv8)) : 'freshtv10)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv12)) : 'freshtv14)
    | CONTRARESP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv33) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv29)) = Obj.magic _menhir_stack in
                let (_v : (
# 5 "parser.mly"
       (string)
# 637 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | COMMA ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv25)) * (
# 5 "parser.mly"
       (string)
# 648 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ID _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv21)) * (
# 5 "parser.mly"
       (string)
# 658 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        let (_v : (
# 5 "parser.mly"
       (string)
# 663 "parser.ml"
                        )) = _v in
                        ((let _menhir_stack = (_menhir_stack, _v) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | RIGHTPAR ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((('freshtv17)) * (
# 5 "parser.mly"
       (string)
# 674 "parser.ml"
                            ))) * (
# 5 "parser.mly"
       (string)
# 678 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((('freshtv15)) * (
# 5 "parser.mly"
       (string)
# 684 "parser.ml"
                            ))) * (
# 5 "parser.mly"
       (string)
# 688 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let ((_menhir_stack, (rname : (
# 5 "parser.mly"
       (string)
# 693 "parser.ml"
                            ))), (c : (
# 5 "parser.mly"
       (string)
# 697 "parser.ml"
                            ))) = _menhir_stack in
                            let _6 = () in
                            let _4 = () in
                            let _2 = () in
                            let _1 = () in
                            let _v : 'tv_assertion = 
# 60 "parser.mly"
 ( ContraResp(rname,c) )
# 706 "parser.ml"
                             in
                            _menhir_goto_assertion _menhir_env _menhir_stack _v) : 'freshtv16)) : 'freshtv18)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((('freshtv19)) * (
# 5 "parser.mly"
       (string)
# 716 "parser.ml"
                            ))) * (
# 5 "parser.mly"
       (string)
# 720 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            (raise _eRR : 'freshtv20)) : 'freshtv22)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv23)) * (
# 5 "parser.mly"
       (string)
# 730 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        (raise _eRR : 'freshtv24)) : 'freshtv26)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv27)) * (
# 5 "parser.mly"
       (string)
# 740 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv28)) : 'freshtv30)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv31)) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv32)) : 'freshtv34)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv35) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv36)) : 'freshtv38)
    | CTX ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv49) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv45)) = Obj.magic _menhir_stack in
                let (_v : (
# 5 "parser.mly"
       (string)
# 773 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RIGHTPAR ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv41)) * (
# 5 "parser.mly"
       (string)
# 784 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv39)) * (
# 5 "parser.mly"
       (string)
# 790 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, (rname : (
# 5 "parser.mly"
       (string)
# 795 "parser.ml"
                    ))) = _menhir_stack in
                    let _4 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : 'tv_assertion = 
# 50 "parser.mly"
 ( Ctx(rname) )
# 803 "parser.ml"
                     in
                    _menhir_goto_assertion _menhir_env _menhir_stack _v) : 'freshtv40)) : 'freshtv42)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv43)) * (
# 5 "parser.mly"
       (string)
# 813 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv44)) : 'freshtv46)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv47)) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv48)) : 'freshtv50)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv51) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv52)) : 'freshtv54)
    | EFF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55) = Obj.magic _menhir_stack in
        ((let _1 = () in
        let _v : 'tv_assertion = 
# 54 "parser.mly"
 ( Effectful )
# 837 "parser.ml"
         in
        _menhir_goto_assertion _menhir_env _menhir_stack _v) : 'freshtv56)) : 'freshtv58)
    | ERR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv67) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv63)) = Obj.magic _menhir_stack in
                let (_v : (
# 5 "parser.mly"
       (string)
# 858 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | COMMA ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv59)) * (
# 5 "parser.mly"
       (string)
# 869 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | NUM _v ->
                        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv60)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv61)) * (
# 5 "parser.mly"
       (string)
# 887 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv62)) : 'freshtv64)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv65)) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv66)) : 'freshtv68)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv69) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv70)) : 'freshtv72)
    | ERROR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv83) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv79)) = Obj.magic _menhir_stack in
                let (_v : (
# 5 "parser.mly"
       (string)
# 920 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RIGHTPAR ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv75)) * (
# 5 "parser.mly"
       (string)
# 931 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv73)) * (
# 5 "parser.mly"
       (string)
# 937 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, (c : (
# 5 "parser.mly"
       (string)
# 942 "parser.ml"
                    ))) = _menhir_stack in
                    let _4 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : 'tv_assertion = 
# 62 "parser.mly"
 ( Error(c) )
# 950 "parser.ml"
                     in
                    _menhir_goto_assertion _menhir_env _menhir_stack _v) : 'freshtv74)) : 'freshtv76)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv77)) * (
# 5 "parser.mly"
       (string)
# 960 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv78)) : 'freshtv80)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv81)) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv82)) : 'freshtv84)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv85) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv86)) : 'freshtv88)
    | ERRORANY ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv99) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv95)) = Obj.magic _menhir_stack in
                let (_v : (
# 5 "parser.mly"
       (string)
# 993 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RIGHTPAR ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv91)) * (
# 5 "parser.mly"
       (string)
# 1004 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv89)) * (
# 5 "parser.mly"
       (string)
# 1010 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, (c : (
# 5 "parser.mly"
       (string)
# 1015 "parser.ml"
                    ))) = _menhir_stack in
                    let _4 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : 'tv_assertion = 
# 64 "parser.mly"
 ( ErrorAnyType(c) )
# 1023 "parser.ml"
                     in
                    _menhir_goto_assertion _menhir_env _menhir_stack _v) : 'freshtv90)) : 'freshtv92)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv93)) * (
# 5 "parser.mly"
       (string)
# 1033 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv94)) : 'freshtv96)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv97)) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv98)) : 'freshtv100)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv101) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv102)) : 'freshtv104)
    | INDUCTIVE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv121) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv117)) = Obj.magic _menhir_stack in
                let (_v : (
# 5 "parser.mly"
       (string)
# 1066 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | COMMA ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv113)) * (
# 5 "parser.mly"
       (string)
# 1077 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ID _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv109)) * (
# 5 "parser.mly"
       (string)
# 1087 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        let (_v : (
# 5 "parser.mly"
       (string)
# 1092 "parser.ml"
                        )) = _v in
                        ((let _menhir_stack = (_menhir_stack, _v) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | COMMA ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((('freshtv105)) * (
# 5 "parser.mly"
       (string)
# 1103 "parser.ml"
                            ))) * (
# 5 "parser.mly"
       (string)
# 1107 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            match _tok with
                            | NUM _v ->
                                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
                            | RIGHTPAR ->
                                _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack) MenhirState30
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv106)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((('freshtv107)) * (
# 5 "parser.mly"
       (string)
# 1127 "parser.ml"
                            ))) * (
# 5 "parser.mly"
       (string)
# 1131 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            (raise _eRR : 'freshtv108)) : 'freshtv110)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv111)) * (
# 5 "parser.mly"
       (string)
# 1141 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        (raise _eRR : 'freshtv112)) : 'freshtv114)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv115)) * (
# 5 "parser.mly"
       (string)
# 1151 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv116)) : 'freshtv118)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv119)) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv120)) : 'freshtv122)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv123) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv124)) : 'freshtv126)
    | INVARIANT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv135) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv131)) = Obj.magic _menhir_stack in
                let (_v : (
# 5 "parser.mly"
       (string)
# 1184 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | COMMA ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv127)) * (
# 5 "parser.mly"
       (string)
# 1195 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | NUM _v ->
                        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
                    | RIGHTPAR ->
                        _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack) MenhirState17
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv128)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv129)) * (
# 5 "parser.mly"
       (string)
# 1215 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv130)) : 'freshtv132)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv133)) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv134)) : 'freshtv136)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv137) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv138)) : 'freshtv140)
    | MUTABLE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv151) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv147)) = Obj.magic _menhir_stack in
                let (_v : (
# 5 "parser.mly"
       (string)
# 1248 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RIGHTPAR ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv143)) * (
# 5 "parser.mly"
       (string)
# 1259 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv141)) * (
# 5 "parser.mly"
       (string)
# 1265 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, (c : (
# 5 "parser.mly"
       (string)
# 1270 "parser.ml"
                    ))) = _menhir_stack in
                    let _4 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : 'tv_assertion = 
# 70 "parser.mly"
 ( Mutable(c) )
# 1278 "parser.ml"
                     in
                    _menhir_goto_assertion _menhir_env _menhir_stack _v) : 'freshtv142)) : 'freshtv144)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv145)) * (
# 5 "parser.mly"
       (string)
# 1288 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv146)) : 'freshtv148)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv149)) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv150)) : 'freshtv152)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv153) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv154)) : 'freshtv156)
    | NODUPLI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv167) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv163)) = Obj.magic _menhir_stack in
                let (_v : (
# 5 "parser.mly"
       (string)
# 1321 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RIGHTPAR ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv159)) * (
# 5 "parser.mly"
       (string)
# 1332 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv157)) * (
# 5 "parser.mly"
       (string)
# 1338 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, (rname : (
# 5 "parser.mly"
       (string)
# 1343 "parser.ml"
                    ))) = _menhir_stack in
                    let _4 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : 'tv_assertion = 
# 56 "parser.mly"
 ( NoDupli(rname) )
# 1351 "parser.ml"
                     in
                    _menhir_goto_assertion _menhir_env _menhir_stack _v) : 'freshtv158)) : 'freshtv160)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv161)) * (
# 5 "parser.mly"
       (string)
# 1361 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv162)) : 'freshtv164)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv165)) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv166)) : 'freshtv168)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv169) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv170)) : 'freshtv172)
    | SOUNDVARIANCE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv183) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv179)) = Obj.magic _menhir_stack in
                let (_v : (
# 5 "parser.mly"
       (string)
# 1394 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RIGHTPAR ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv175)) * (
# 5 "parser.mly"
       (string)
# 1405 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv173)) * (
# 5 "parser.mly"
       (string)
# 1411 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, (c : (
# 5 "parser.mly"
       (string)
# 1416 "parser.ml"
                    ))) = _menhir_stack in
                    let _4 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : 'tv_assertion = 
# 68 "parser.mly"
 ( SoundVariance(c) )
# 1424 "parser.ml"
                     in
                    _menhir_goto_assertion _menhir_env _menhir_stack _v) : 'freshtv174)) : 'freshtv176)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv177)) * (
# 5 "parser.mly"
       (string)
# 1434 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv178)) : 'freshtv180)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv181)) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv182)) : 'freshtv184)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv185) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv186)) : 'freshtv188)
    | TRUE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv191) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv189) = Obj.magic _menhir_stack in
        ((let _1 = () in
        let _v : 'tv_assertion = 
# 46 "parser.mly"
 ( True )
# 1458 "parser.ml"
         in
        _menhir_goto_assertion _menhir_env _menhir_stack _v) : 'freshtv190)) : 'freshtv192)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv193) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv194)) : 'freshtv196))

# 219 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
  


# 1472 "parser.ml"
