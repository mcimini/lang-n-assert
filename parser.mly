%{
  open Logic
%}

%token <string> ID
%token <string> NUM


%token TRUE
%token INDUCTIVE
%token CTX
%token ERR
%token EFF
%token NODUPLI
%token CONTRA
%token CONTRARESP

%token LEFTSQUARE 
%token RIGHTSQUARE 
%token LEFTPAR  
%token RIGHTPAR 
%token COMMA
%token QUOTE



%token EOF

%start commandLine
%type <(Logic.assertion)> commandLine

%%

commandLine:
  |  a = assertion  
  	{ a }


assertion : 
	| TRUE 
	{ True }
	| INDUCTIVE LEFTPAR metavar =  ID COMMA c =  ID COMMA is = separated_list(COMMA, number) RIGHTPAR 
	{ Inductive(metavar,(c,is)) }
	| CTX LEFTPAR rname =  ID RIGHTPAR 
	{ Ctx(rname) }
	| ERR LEFTPAR op =  ID COMMA i = number RIGHTPAR 
	{ HandlesError(op,i) }
	| EFF
	{ Effectful }
	| NODUPLI LEFTPAR rname = ID RIGHTPAR 
	{ NoDupli(rname) }
	| CONTRA LEFTPAR c =  ID COMMA is = separated_list(COMMA, number) RIGHTPAR 
	{ Contra(c,is) }
	| CONTRARESP LEFTPAR rname =  ID COMMA c =  ID RIGHTPAR 
	{ ContraResp(rname,c) }

number : 
	| n = NUM 
	{ int_of_string n }
