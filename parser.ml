
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | TRUE
    | RIGHTSQUARE
    | RIGHTPAR
    | QUOTE
    | NUM of (
# 6 "parser.mly"
       (string)
# 15 "parser.ml"
  )
    | NODUPLI
    | LEFTSQUARE
    | LEFTPAR
    | INDUCTIVE
    | ID of (
# 5 "parser.mly"
       (string)
# 24 "parser.ml"
  )
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
  | MenhirState39
  | MenhirState22
  | MenhirState15
  | MenhirState11

# 1 "parser.mly"
  
  open Logic

# 58 "parser.ml"

let rec _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_loption_separated_nonempty_list_COMMA_number__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_number__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv171)) * (
# 5 "parser.mly"
       (string)
# 74 "parser.ml"
        ))) * (
# 5 "parser.mly"
       (string)
# 78 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_number__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv167)) * (
# 5 "parser.mly"
       (string)
# 88 "parser.ml"
            ))) * (
# 5 "parser.mly"
       (string)
# 92 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_number__) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv165)) * (
# 5 "parser.mly"
       (string)
# 98 "parser.ml"
            ))) * (
# 5 "parser.mly"
       (string)
# 102 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_number__) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, (metavar : (
# 5 "parser.mly"
       (string)
# 107 "parser.ml"
            ))), (c : (
# 5 "parser.mly"
       (string)
# 111 "parser.ml"
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
# 123 "parser.ml"
              
            in
            
# 43 "parser.mly"
 ( Inductive(metavar,(c,is)) )
# 129 "parser.ml"
             in
            _menhir_goto_assertion _menhir_env _menhir_stack _v) : 'freshtv166)) : 'freshtv168)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv169)) * (
# 5 "parser.mly"
       (string)
# 139 "parser.ml"
            ))) * (
# 5 "parser.mly"
       (string)
# 143 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_number__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)) : 'freshtv172)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv179)) * (
# 5 "parser.mly"
       (string)
# 152 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_number__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv175)) * (
# 5 "parser.mly"
       (string)
# 162 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_number__) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv173)) * (
# 5 "parser.mly"
       (string)
# 168 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_number__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, (c : (
# 5 "parser.mly"
       (string)
# 173 "parser.ml"
            ))), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_number__)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_assertion = let is =
              let xs = xs0 in
              
# 206 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( xs )
# 184 "parser.ml"
              
            in
            
# 53 "parser.mly"
 ( Contra(c,is) )
# 190 "parser.ml"
             in
            _menhir_goto_assertion _menhir_env _menhir_stack _v) : 'freshtv174)) : 'freshtv176)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv177)) * (
# 5 "parser.mly"
       (string)
# 200 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_number__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)) : 'freshtv180)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_number_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_number_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState39 | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_number_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_number_) : 'tv_separated_nonempty_list_COMMA_number_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_number__ = 
# 130 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x )
# 222 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_number__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv158)) : 'freshtv160)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163 * _menhir_state * 'tv_number)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_number_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state * 'tv_number)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_number_) : 'tv_separated_nonempty_list_COMMA_number_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_number)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_number_ = 
# 217 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 239 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_number_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv162)) : 'freshtv164)
    | _ ->
        _menhir_fail ()

and _menhir_goto_assertion : _menhir_env -> 'ttv_tail -> 'tv_assertion -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv155) = Obj.magic _menhir_stack in
    let (_v : 'tv_assertion) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv153) = Obj.magic _menhir_stack in
    let ((a : 'tv_assertion) : 'tv_assertion) = _v in
    ((let _v : (
# 30 "parser.mly"
      ((Logic.assertion))
# 256 "parser.ml"
    ) = 
# 36 "parser.mly"
   ( a )
# 260 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv151) = _menhir_stack in
    let (_v : (
# 30 "parser.mly"
      ((Logic.assertion))
# 267 "parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv149) = Obj.magic _menhir_stack in
    let (_v : (
# 30 "parser.mly"
      ((Logic.assertion))
# 274 "parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv147) = Obj.magic _menhir_stack in
    let ((_1 : (
# 30 "parser.mly"
      ((Logic.assertion))
# 281 "parser.ml"
    )) : (
# 30 "parser.mly"
      ((Logic.assertion))
# 285 "parser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv148)) : 'freshtv150)) : 'freshtv152)) : 'freshtv154)) : 'freshtv156)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv139)) * (
# 5 "parser.mly"
       (string)
# 297 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv140)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv141)) * (
# 5 "parser.mly"
       (string)
# 305 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv142)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143 * _menhir_state * 'tv_number)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv145)) * (
# 5 "parser.mly"
       (string)
# 318 "parser.ml"
        ))) * (
# 5 "parser.mly"
       (string)
# 322 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv146)

and _menhir_reduce10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_number__ = 
# 128 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 331 "parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_number__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parser.mly"
       (string)
# 338 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv137) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 6 "parser.mly"
       (string)
# 348 "parser.ml"
    )) : (
# 6 "parser.mly"
       (string)
# 352 "parser.ml"
    )) = _v in
    ((let _v : 'tv_number = 
# 59 "parser.mly"
 ( int_of_string n )
# 357 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv135) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_number) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState39 | MenhirState15 | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state * 'tv_number) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv119 * _menhir_state * 'tv_number) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | NUM _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv120)
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv121 * _menhir_state * 'tv_number) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_number)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_number_ = 
# 215 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [ x ] )
# 390 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_number_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv122)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv123 * _menhir_state * 'tv_number) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)) : 'freshtv126)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv133)) * (
# 5 "parser.mly"
       (string)
# 405 "parser.ml"
        ))) * _menhir_state * 'tv_number) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv129)) * (
# 5 "parser.mly"
       (string)
# 415 "parser.ml"
            ))) * _menhir_state * 'tv_number) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv127)) * (
# 5 "parser.mly"
       (string)
# 421 "parser.ml"
            ))) * _menhir_state * 'tv_number) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, (op : (
# 5 "parser.mly"
       (string)
# 426 "parser.ml"
            ))), _, (i : 'tv_number)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_assertion = 
# 47 "parser.mly"
 ( HandlesError(op,i) )
# 435 "parser.ml"
             in
            _menhir_goto_assertion _menhir_env _menhir_stack _v) : 'freshtv128)) : 'freshtv130)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv131)) * (
# 5 "parser.mly"
       (string)
# 445 "parser.ml"
            ))) * _menhir_state * 'tv_number) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)) : 'freshtv134)) : 'freshtv136)) : 'freshtv138)

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
# 30 "parser.mly"
      ((Logic.assertion))
# 465 "parser.ml"
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
    let (_menhir_stack : 'freshtv117) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
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
# 502 "parser.ml"
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
# 513 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | NUM _v ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
                    | RIGHTPAR ->
                        _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) MenhirState39
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv2)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv3)) * (
# 5 "parser.mly"
       (string)
# 533 "parser.ml"
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
# 566 "parser.ml"
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
# 577 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ID _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv21)) * (
# 5 "parser.mly"
       (string)
# 587 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        let (_v : (
# 5 "parser.mly"
       (string)
# 592 "parser.ml"
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
# 603 "parser.ml"
                            ))) * (
# 5 "parser.mly"
       (string)
# 607 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((('freshtv15)) * (
# 5 "parser.mly"
       (string)
# 613 "parser.ml"
                            ))) * (
# 5 "parser.mly"
       (string)
# 617 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let ((_menhir_stack, (rname : (
# 5 "parser.mly"
       (string)
# 622 "parser.ml"
                            ))), (c : (
# 5 "parser.mly"
       (string)
# 626 "parser.ml"
                            ))) = _menhir_stack in
                            let _6 = () in
                            let _4 = () in
                            let _2 = () in
                            let _1 = () in
                            let _v : 'tv_assertion = 
# 55 "parser.mly"
 ( ContraResp(rname,c) )
# 635 "parser.ml"
                             in
                            _menhir_goto_assertion _menhir_env _menhir_stack _v) : 'freshtv16)) : 'freshtv18)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((('freshtv19)) * (
# 5 "parser.mly"
       (string)
# 645 "parser.ml"
                            ))) * (
# 5 "parser.mly"
       (string)
# 649 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            (raise _eRR : 'freshtv20)) : 'freshtv22)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv23)) * (
# 5 "parser.mly"
       (string)
# 659 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        (raise _eRR : 'freshtv24)) : 'freshtv26)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv27)) * (
# 5 "parser.mly"
       (string)
# 669 "parser.ml"
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
# 702 "parser.ml"
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
# 713 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv39)) * (
# 5 "parser.mly"
       (string)
# 719 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, (rname : (
# 5 "parser.mly"
       (string)
# 724 "parser.ml"
                    ))) = _menhir_stack in
                    let _4 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : 'tv_assertion = 
# 45 "parser.mly"
 ( Ctx(rname) )
# 732 "parser.ml"
                     in
                    _menhir_goto_assertion _menhir_env _menhir_stack _v) : 'freshtv40)) : 'freshtv42)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv43)) * (
# 5 "parser.mly"
       (string)
# 742 "parser.ml"
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
# 49 "parser.mly"
 ( Effectful )
# 766 "parser.ml"
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
# 787 "parser.ml"
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
# 798 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | NUM _v ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22) : 'freshtv60)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv61)) * (
# 5 "parser.mly"
       (string)
# 816 "parser.ml"
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
    | INDUCTIVE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv89) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv85)) = Obj.magic _menhir_stack in
                let (_v : (
# 5 "parser.mly"
       (string)
# 849 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | COMMA ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv81)) * (
# 5 "parser.mly"
       (string)
# 860 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ID _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv77)) * (
# 5 "parser.mly"
       (string)
# 870 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        let (_v : (
# 5 "parser.mly"
       (string)
# 875 "parser.ml"
                        )) = _v in
                        ((let _menhir_stack = (_menhir_stack, _v) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | COMMA ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((('freshtv73)) * (
# 5 "parser.mly"
       (string)
# 886 "parser.ml"
                            ))) * (
# 5 "parser.mly"
       (string)
# 890 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            match _tok with
                            | NUM _v ->
                                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
                            | RIGHTPAR ->
                                _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) MenhirState11
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv74)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((('freshtv75)) * (
# 5 "parser.mly"
       (string)
# 910 "parser.ml"
                            ))) * (
# 5 "parser.mly"
       (string)
# 914 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            (raise _eRR : 'freshtv76)) : 'freshtv78)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv79)) * (
# 5 "parser.mly"
       (string)
# 924 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        (raise _eRR : 'freshtv80)) : 'freshtv82)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv83)) * (
# 5 "parser.mly"
       (string)
# 934 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv84)) : 'freshtv86)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv87)) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv88)) : 'freshtv90)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv91) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv92)) : 'freshtv94)
    | NODUPLI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv105) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv101)) = Obj.magic _menhir_stack in
                let (_v : (
# 5 "parser.mly"
       (string)
# 967 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RIGHTPAR ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv97)) * (
# 5 "parser.mly"
       (string)
# 978 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv95)) * (
# 5 "parser.mly"
       (string)
# 984 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, (rname : (
# 5 "parser.mly"
       (string)
# 989 "parser.ml"
                    ))) = _menhir_stack in
                    let _4 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : 'tv_assertion = 
# 51 "parser.mly"
 ( NoDupli(rname) )
# 997 "parser.ml"
                     in
                    _menhir_goto_assertion _menhir_env _menhir_stack _v) : 'freshtv96)) : 'freshtv98)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv99)) * (
# 5 "parser.mly"
       (string)
# 1007 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv100)) : 'freshtv102)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv103)) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv104)) : 'freshtv106)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv107) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv108)) : 'freshtv110)
    | TRUE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111) = Obj.magic _menhir_stack in
        ((let _1 = () in
        let _v : 'tv_assertion = 
# 41 "parser.mly"
 ( True )
# 1031 "parser.ml"
         in
        _menhir_goto_assertion _menhir_env _menhir_stack _v) : 'freshtv112)) : 'freshtv114)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv116)) : 'freshtv118))

# 219 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
  


# 1045 "parser.ml"
