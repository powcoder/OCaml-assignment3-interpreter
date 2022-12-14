https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
type token =
  | TRUE
  | FALSE
  | AND
  | OR
  | NOT
  | PLUS
  | MINUS
  | TIMES
  | DIV
  | MOD
  | EQ
  | LEQ
  | LT
  | GEQ
  | GT
  | LPAREN
  | RPAREN
  | LBRACE
  | RBRACE
  | ASSG
  | COMP
  | SKIP
  | IF
  | ELSE
  | WHILE
  | FOR
  | PRINT
  | INPUT
  | VAR of (string)
  | NUMBER of (int)
  | EOL
  | INT
  | BOOL
  | LAMBDA
  | FUN
  | ARROW

open Parsing;;
let _ = parse_error;;
# 2 "src/Parser/parser.mly"
open Ast
# 44 "src/Parser/parser.ml"
let yytransl_const = [|
  257 (* TRUE *);
  258 (* FALSE *);
  259 (* AND *);
  260 (* OR *);
  261 (* NOT *);
  262 (* PLUS *);
  263 (* MINUS *);
  264 (* TIMES *);
  265 (* DIV *);
  266 (* MOD *);
  267 (* EQ *);
  268 (* LEQ *);
  269 (* LT *);
  270 (* GEQ *);
  271 (* GT *);
  272 (* LPAREN *);
  273 (* RPAREN *);
  274 (* LBRACE *);
  275 (* RBRACE *);
  276 (* ASSG *);
  277 (* COMP *);
  278 (* SKIP *);
  279 (* IF *);
  280 (* ELSE *);
  281 (* WHILE *);
  282 (* FOR *);
  283 (* PRINT *);
  284 (* INPUT *);
  287 (* EOL *);
  288 (* INT *);
  289 (* BOOL *);
  290 (* LAMBDA *);
  291 (* FUN *);
  292 (* ARROW *);
    0|]

let yytransl_block = [|
  285 (* VAR *);
  286 (* NUMBER *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\002\000\002\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\004\000\004\000\004\000\004\000\004\000\005\000\005\000\005\000\
\005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
\005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
\005\000\005\000\005\000\006\000\006\000\006\000\006\000\006\000\
\000\000"

let yylen = "\002\000\
\002\000\003\000\002\000\002\000\001\000\003\000\002\000\005\000\
\005\000\007\000\007\000\003\000\001\000\002\000\002\000\002\000\
\003\000\005\000\005\000\007\000\007\000\001\000\001\000\003\000\
\003\000\003\000\003\000\003\000\003\000\002\000\003\000\003\000\
\003\000\003\000\003\000\003\000\002\000\003\000\003\000\001\000\
\001\000\002\000\004\000\001\000\001\000\001\000\001\000\003\000\
\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\013\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\049\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\014\000\015\000\016\000\001\000\
\000\000\000\000\003\000\017\000\040\000\041\000\000\000\000\000\
\000\000\022\000\023\000\000\000\000\000\000\000\000\000\000\000\
\002\000\006\000\000\000\000\000\000\000\000\000\046\000\047\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\045\000\044\000\
\042\000\000\000\000\000\024\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\008\000\018\000\009\000\019\000\
\000\000\048\000\000\000\000\000\010\000\020\000\011\000\021\000"

let yydgoto = "\002\000\
\012\000\013\000\014\000\015\000\037\000\065\000"

let yysindex = "\015\000\
\024\001\000\000\024\001\000\000\004\255\008\255\009\255\006\255\
\020\255\035\255\036\255\000\000\037\255\045\255\011\001\048\255\
\043\255\043\255\043\255\043\255\000\000\000\000\000\000\000\000\
\024\001\024\001\000\000\000\000\000\000\000\000\043\255\043\255\
\043\255\000\000\000\000\042\255\166\255\196\255\226\255\061\000\
\000\000\000\000\075\255\053\255\001\000\057\255\000\000\000\000\
\043\255\043\255\043\255\043\255\043\255\043\255\043\255\043\255\
\043\255\043\255\043\255\043\255\043\255\024\001\000\000\000\000\
\000\000\024\001\024\001\000\000\043\255\075\255\075\255\053\255\
\053\255\185\255\185\255\053\255\077\000\077\000\077\000\077\000\
\077\000\031\000\071\255\072\255\000\000\000\000\000\000\000\000\
\002\255\000\000\024\001\024\001\000\000\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\070\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\101\255\132\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\039\255\
\000\000\000\000\073\255\154\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\104\255\135\255\180\000\
\206\000\102\000\128\000\232\000\200\255\005\000\035\000\042\001\
\043\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\253\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\004\000\211\255\217\255\238\255\000\000"

let yytablesize = 586
let yytable = "\038\000\
\039\000\040\000\047\000\048\000\049\000\050\000\016\000\051\000\
\052\000\053\000\054\000\055\000\043\000\044\000\045\000\001\000\
\083\000\061\000\027\000\017\000\085\000\087\000\084\000\018\000\
\019\000\020\000\086\000\088\000\041\000\042\000\070\000\071\000\
\072\000\073\000\074\000\075\000\076\000\077\000\078\000\079\000\
\080\000\081\000\082\000\029\000\030\000\093\000\095\000\031\000\
\021\000\032\000\089\000\094\000\096\000\047\000\048\000\049\000\
\050\000\012\000\033\000\012\000\053\000\054\000\012\000\022\000\
\023\000\025\000\028\000\024\000\061\000\012\000\046\000\034\000\
\035\000\037\000\037\000\037\000\037\000\036\000\037\000\037\000\
\037\000\037\000\037\000\037\000\037\000\037\000\037\000\037\000\
\005\000\037\000\061\000\037\000\069\000\037\000\091\000\092\000\
\037\000\000\000\000\000\000\000\005\000\037\000\037\000\037\000\
\038\000\038\000\038\000\038\000\000\000\038\000\038\000\038\000\
\038\000\038\000\038\000\038\000\038\000\038\000\038\000\004\000\
\038\000\000\000\038\000\000\000\038\000\000\000\000\000\038\000\
\000\000\000\000\000\000\004\000\038\000\038\000\038\000\039\000\
\039\000\039\000\039\000\000\000\039\000\039\000\039\000\039\000\
\039\000\039\000\039\000\039\000\039\000\039\000\007\000\039\000\
\000\000\039\000\000\000\039\000\000\000\000\000\039\000\000\000\
\000\000\000\000\007\000\039\000\039\000\039\000\047\000\048\000\
\049\000\050\000\000\000\051\000\052\000\053\000\054\000\055\000\
\056\000\057\000\058\000\059\000\060\000\061\000\062\000\000\000\
\000\000\047\000\048\000\049\000\050\000\000\000\000\000\000\000\
\000\000\000\000\063\000\064\000\047\000\048\000\049\000\050\000\
\061\000\051\000\052\000\053\000\054\000\055\000\056\000\057\000\
\058\000\059\000\060\000\061\000\066\000\000\000\000\000\000\000\
\031\000\000\000\031\000\000\000\031\000\000\000\000\000\031\000\
\063\000\064\000\047\000\048\000\049\000\050\000\031\000\051\000\
\052\000\053\000\054\000\055\000\056\000\057\000\058\000\059\000\
\060\000\061\000\067\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\063\000\064\000\
\000\000\047\000\048\000\049\000\050\000\000\000\051\000\052\000\
\053\000\054\000\055\000\056\000\057\000\058\000\059\000\060\000\
\061\000\068\000\000\000\000\000\000\000\032\000\000\000\032\000\
\000\000\032\000\000\000\000\000\032\000\063\000\064\000\047\000\
\048\000\049\000\050\000\032\000\051\000\052\000\053\000\054\000\
\055\000\056\000\057\000\058\000\059\000\060\000\061\000\090\000\
\000\000\000\000\000\000\033\000\000\000\033\000\000\000\033\000\
\000\000\000\000\033\000\063\000\064\000\047\000\048\000\049\000\
\050\000\033\000\051\000\052\000\053\000\054\000\055\000\056\000\
\057\000\058\000\059\000\060\000\061\000\047\000\048\000\049\000\
\050\000\000\000\051\000\052\000\053\000\054\000\055\000\000\000\
\000\000\063\000\064\000\000\000\061\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\063\000\064\000\027\000\027\000\027\000\027\000\027\000\
\027\000\027\000\027\000\027\000\027\000\000\000\027\000\000\000\
\027\000\000\000\027\000\000\000\000\000\027\000\000\000\000\000\
\000\000\000\000\027\000\027\000\027\000\028\000\028\000\028\000\
\028\000\028\000\028\000\028\000\028\000\028\000\028\000\000\000\
\028\000\000\000\028\000\000\000\028\000\000\000\000\000\028\000\
\000\000\000\000\000\000\000\000\028\000\028\000\028\000\030\000\
\030\000\000\000\000\000\030\000\030\000\030\000\030\000\030\000\
\030\000\000\000\030\000\000\000\030\000\000\000\030\000\000\000\
\000\000\030\000\000\000\000\000\000\000\000\000\030\000\030\000\
\030\000\025\000\025\000\000\000\000\000\025\000\025\000\025\000\
\025\000\025\000\025\000\000\000\025\000\000\000\025\000\000\000\
\025\000\000\000\000\000\025\000\000\000\000\000\000\000\000\000\
\025\000\025\000\025\000\026\000\026\000\000\000\000\000\026\000\
\026\000\026\000\026\000\026\000\026\000\000\000\026\000\000\000\
\026\000\000\000\026\000\000\000\000\000\026\000\000\000\000\000\
\000\000\000\000\026\000\026\000\026\000\029\000\029\000\000\000\
\000\000\029\000\029\000\029\000\029\000\029\000\029\000\000\000\
\029\000\000\000\029\000\000\000\029\000\000\000\000\000\029\000\
\000\000\000\000\000\000\000\000\029\000\029\000\029\000\043\000\
\043\000\043\000\043\000\043\000\000\000\043\000\000\000\043\000\
\000\000\043\000\000\000\000\000\043\000\000\000\000\000\000\000\
\000\000\043\000\043\000\043\000\003\000\000\000\000\000\026\000\
\004\000\005\000\000\000\006\000\007\000\000\000\000\000\008\000\
\000\000\003\000\009\000\010\000\011\000\004\000\005\000\000\000\
\006\000\007\000\000\000\000\000\008\000\000\000\000\000\009\000\
\010\000\011\000\034\000\035\000\034\000\035\000\034\000\035\000\
\000\000\034\000\035\000\000\000\000\000\000\000\000\000\000\000\
\034\000\035\000"

let yycheck = "\018\000\
\019\000\020\000\001\001\002\001\003\001\004\001\003\000\006\001\
\007\001\008\001\009\001\010\001\031\000\032\000\033\000\001\000\
\062\000\016\001\015\000\016\001\066\000\067\000\062\000\016\001\
\016\001\020\001\066\000\067\000\025\000\026\000\049\000\050\000\
\051\000\052\000\053\000\054\000\055\000\056\000\057\000\058\000\
\059\000\060\000\061\000\001\001\002\001\091\000\092\000\005\001\
\029\001\007\001\069\000\091\000\092\000\001\001\002\001\003\001\
\004\001\019\001\016\001\021\001\008\001\009\001\024\001\029\001\
\029\001\021\001\019\001\031\001\016\001\031\001\029\001\029\001\
\030\001\001\001\002\001\003\001\004\001\035\001\006\001\007\001\
\008\001\009\001\010\001\011\001\012\001\013\001\014\001\015\001\
\019\001\017\001\016\001\019\001\036\001\021\001\024\001\024\001\
\024\001\255\255\255\255\255\255\031\001\029\001\030\001\031\001\
\001\001\002\001\003\001\004\001\255\255\006\001\007\001\008\001\
\009\001\010\001\011\001\012\001\013\001\014\001\015\001\019\001\
\017\001\255\255\019\001\255\255\021\001\255\255\255\255\024\001\
\255\255\255\255\255\255\031\001\029\001\030\001\031\001\001\001\
\002\001\003\001\004\001\255\255\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\014\001\015\001\019\001\017\001\
\255\255\019\001\255\255\021\001\255\255\255\255\024\001\255\255\
\255\255\255\255\031\001\029\001\030\001\031\001\001\001\002\001\
\003\001\004\001\255\255\006\001\007\001\008\001\009\001\010\001\
\011\001\012\001\013\001\014\001\015\001\016\001\017\001\255\255\
\255\255\001\001\002\001\003\001\004\001\255\255\255\255\255\255\
\255\255\255\255\029\001\030\001\001\001\002\001\003\001\004\001\
\016\001\006\001\007\001\008\001\009\001\010\001\011\001\012\001\
\013\001\014\001\015\001\016\001\017\001\255\255\255\255\255\255\
\017\001\255\255\019\001\255\255\021\001\255\255\255\255\024\001\
\029\001\030\001\001\001\002\001\003\001\004\001\031\001\006\001\
\007\001\008\001\009\001\010\001\011\001\012\001\013\001\014\001\
\015\001\016\001\017\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\029\001\030\001\
\255\255\001\001\002\001\003\001\004\001\255\255\006\001\007\001\
\008\001\009\001\010\001\011\001\012\001\013\001\014\001\015\001\
\016\001\017\001\255\255\255\255\255\255\017\001\255\255\019\001\
\255\255\021\001\255\255\255\255\024\001\029\001\030\001\001\001\
\002\001\003\001\004\001\031\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\014\001\015\001\016\001\017\001\
\255\255\255\255\255\255\017\001\255\255\019\001\255\255\021\001\
\255\255\255\255\024\001\029\001\030\001\001\001\002\001\003\001\
\004\001\031\001\006\001\007\001\008\001\009\001\010\001\011\001\
\012\001\013\001\014\001\015\001\016\001\001\001\002\001\003\001\
\004\001\255\255\006\001\007\001\008\001\009\001\010\001\255\255\
\255\255\029\001\030\001\255\255\016\001\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\029\001\030\001\006\001\007\001\008\001\009\001\010\001\
\011\001\012\001\013\001\014\001\015\001\255\255\017\001\255\255\
\019\001\255\255\021\001\255\255\255\255\024\001\255\255\255\255\
\255\255\255\255\029\001\030\001\031\001\006\001\007\001\008\001\
\009\001\010\001\011\001\012\001\013\001\014\001\015\001\255\255\
\017\001\255\255\019\001\255\255\021\001\255\255\255\255\024\001\
\255\255\255\255\255\255\255\255\029\001\030\001\031\001\006\001\
\007\001\255\255\255\255\010\001\011\001\012\001\013\001\014\001\
\015\001\255\255\017\001\255\255\019\001\255\255\021\001\255\255\
\255\255\024\001\255\255\255\255\255\255\255\255\029\001\030\001\
\031\001\006\001\007\001\255\255\255\255\010\001\011\001\012\001\
\013\001\014\001\015\001\255\255\017\001\255\255\019\001\255\255\
\021\001\255\255\255\255\024\001\255\255\255\255\255\255\255\255\
\029\001\030\001\031\001\006\001\007\001\255\255\255\255\010\001\
\011\001\012\001\013\001\014\001\015\001\255\255\017\001\255\255\
\019\001\255\255\021\001\255\255\255\255\024\001\255\255\255\255\
\255\255\255\255\029\001\030\001\031\001\006\001\007\001\255\255\
\255\255\010\001\011\001\012\001\013\001\014\001\015\001\255\255\
\017\001\255\255\019\001\255\255\021\001\255\255\255\255\024\001\
\255\255\255\255\255\255\255\255\029\001\030\001\031\001\011\001\
\012\001\013\001\014\001\015\001\255\255\017\001\255\255\019\001\
\255\255\021\001\255\255\255\255\024\001\255\255\255\255\255\255\
\255\255\029\001\030\001\031\001\018\001\255\255\255\255\021\001\
\022\001\023\001\255\255\025\001\026\001\255\255\255\255\029\001\
\255\255\018\001\032\001\033\001\034\001\022\001\023\001\255\255\
\025\001\026\001\255\255\255\255\029\001\255\255\255\255\032\001\
\033\001\034\001\017\001\017\001\019\001\019\001\021\001\021\001\
\255\255\024\001\024\001\255\255\255\255\255\255\255\255\255\255\
\031\001\031\001"

let yynames_const = "\
  TRUE\000\
  FALSE\000\
  AND\000\
  OR\000\
  NOT\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIV\000\
  MOD\000\
  EQ\000\
  LEQ\000\
  LT\000\
  GEQ\000\
  GT\000\
  LPAREN\000\
  RPAREN\000\
  LBRACE\000\
  RBRACE\000\
  ASSG\000\
  COMP\000\
  SKIP\000\
  IF\000\
  ELSE\000\
  WHILE\000\
  FOR\000\
  PRINT\000\
  INPUT\000\
  EOL\000\
  INT\000\
  BOOL\000\
  LAMBDA\000\
  FUN\000\
  ARROW\000\
  "

let yynames_block = "\
  VAR\000\
  NUMBER\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'comlist) in
    Obj.repr(
# 39 "src/Parser/parser.mly"
                ( _1 )
# 355 "src/Parser/parser.ml"
               : Ast.com))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'com) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'comlist) in
    Obj.repr(
# 43 "src/Parser/parser.mly"
                     ( Comp (_1, _3) )
# 363 "src/Parser/parser.ml"
               : 'comlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'combr) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'comlist) in
    Obj.repr(
# 44 "src/Parser/parser.mly"
                  ( Comp (_1, _2) )
# 371 "src/Parser/parser.ml"
               : 'comlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'com) in
    Obj.repr(
# 45 "src/Parser/parser.mly"
             ( _1 )
# 378 "src/Parser/parser.ml"
               : 'comlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'com) in
    Obj.repr(
# 46 "src/Parser/parser.mly"
        ( _1 )
# 385 "src/Parser/parser.ml"
               : 'comlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'combr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'comlist) in
    Obj.repr(
# 47 "src/Parser/parser.mly"
                       ( Comp (_1, _3) )
# 393 "src/Parser/parser.ml"
               : 'comlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'combr) in
    Obj.repr(
# 48 "src/Parser/parser.mly"
               ( _1 )
# 400 "src/Parser/parser.ml"
               : 'comlist))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'com) in
    Obj.repr(
# 52 "src/Parser/parser.mly"
                                ( While (_3, _5) )
# 408 "src/Parser/parser.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'com) in
    Obj.repr(
# 53 "src/Parser/parser.mly"
                                ( For   (_3, _5) )
# 416 "src/Parser/parser.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'exp) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'com) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'com) in
    Obj.repr(
# 54 "src/Parser/parser.mly"
                                      ( Cond (_3, _5, _7) )
# 425 "src/Parser/parser.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'exp) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'combr) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'com) in
    Obj.repr(
# 55 "src/Parser/parser.mly"
                                        ( Cond (_3, _5, _7) )
# 434 "src/Parser/parser.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 56 "src/Parser/parser.mly"
                 ( Assg (_1, _3) )
# 442 "src/Parser/parser.ml"
               : 'com))
; (fun __caml_parser_env ->
    Obj.repr(
# 57 "src/Parser/parser.mly"
         ( Skip )
# 448 "src/Parser/parser.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 58 "src/Parser/parser.mly"
            ( Declare (Int_Type, _2) )
# 455 "src/Parser/parser.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 59 "src/Parser/parser.mly"
             ( Declare (Bool_Type, _2) )
# 462 "src/Parser/parser.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 60 "src/Parser/parser.mly"
               ( Declare (Lambda_Type, _2) )
# 469 "src/Parser/parser.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'comlist) in
    Obj.repr(
# 64 "src/Parser/parser.mly"
                          ( _2 )
# 476 "src/Parser/parser.ml"
               : 'combr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'combr) in
    Obj.repr(
# 65 "src/Parser/parser.mly"
                                  ( While (_3, _5) )
# 484 "src/Parser/parser.ml"
               : 'combr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'combr) in
    Obj.repr(
# 66 "src/Parser/parser.mly"
                                  ( For   (_3, _5) )
# 492 "src/Parser/parser.ml"
               : 'combr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'exp) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'com) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'combr) in
    Obj.repr(
# 67 "src/Parser/parser.mly"
                                        ( Cond (_3, _5, _7) )
# 501 "src/Parser/parser.ml"
               : 'combr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'exp) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'combr) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'combr) in
    Obj.repr(
# 68 "src/Parser/parser.mly"
                                          ( Cond (_3, _5, _7) )
# 510 "src/Parser/parser.ml"
               : 'combr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 72 "src/Parser/parser.mly"
        ( Var _1 )
# 517 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 73 "src/Parser/parser.mly"
           ( Number _1 )
# 524 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 74 "src/Parser/parser.mly"
                      ( _2 )
# 531 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 75 "src/Parser/parser.mly"
                 ( Plus (_1, _3) )
# 539 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 76 "src/Parser/parser.mly"
                  ( Minus (_1, _3) )
# 547 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 77 "src/Parser/parser.mly"
                  ( Times (_1, _3) )
# 555 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 78 "src/Parser/parser.mly"
                ( Div (_1, _3) )
# 563 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 79 "src/Parser/parser.mly"
                ( Mod (_1, _3) )
# 571 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 80 "src/Parser/parser.mly"
              ( Minus (Number 0, _2) )
# 578 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 81 "src/Parser/parser.mly"
               ( Eq (_1, _3) )
# 586 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 82 "src/Parser/parser.mly"
                ( Leq (_1, _3) )
# 594 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 83 "src/Parser/parser.mly"
               ( Lt (_1, _3) )
# 602 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 84 "src/Parser/parser.mly"
                ( Leq (_3, _1) )
# 610 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 85 "src/Parser/parser.mly"
               ( Lt (_3, _1) )
# 618 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 86 "src/Parser/parser.mly"
                      ( _2 )
# 625 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 87 "src/Parser/parser.mly"
            ( Not _2 )
# 632 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 88 "src/Parser/parser.mly"
                ( And (_1, _3) )
# 640 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 89 "src/Parser/parser.mly"
               ( Or (_1, _3) )
# 648 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    Obj.repr(
# 90 "src/Parser/parser.mly"
         ( True )
# 654 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    Obj.repr(
# 91 "src/Parser/parser.mly"
          ( False )
# 660 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp8) in
    Obj.repr(
# 92 "src/Parser/parser.mly"
             ( App (_1, _2) )
# 668 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 93 "src/Parser/parser.mly"
                       ( Fun (_2, _4) )
# 676 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 97 "src/Parser/parser.mly"
             ( Number _1 )
# 683 "src/Parser/parser.ml"
               : 'exp8))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 98 "src/Parser/parser.mly"
          ( Var _1 )
# 690 "src/Parser/parser.ml"
               : 'exp8))
; (fun __caml_parser_env ->
    Obj.repr(
# 99 "src/Parser/parser.mly"
           ( True )
# 696 "src/Parser/parser.ml"
               : 'exp8))
; (fun __caml_parser_env ->
    Obj.repr(
# 100 "src/Parser/parser.mly"
            ( False )
# 702 "src/Parser/parser.ml"
               : 'exp8))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 101 "src/Parser/parser.mly"
                        ( _2 )
# 709 "src/Parser/parser.ml"
               : 'exp8))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.com)
;;
