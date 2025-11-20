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
%token ERROR
%token ERRORANY
%token INVARIANT
<<<<<<< HEAD
%token SOUNDVARIANCE
%token MUTABLE
=======
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d

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
	| CONTRARESP LEFTPAR rname =  ID COMMA c = ID RIGHTPAR 
	{ ContraResp(rname,c) }
	| ERROR LEFTPAR c = ID RIGHTPAR 
	{ Error(c) }
	| ERRORANY LEFTPAR c = ID RIGHTPAR 
	{ ErrorAnyType(c) }
	| INVARIANT LEFTPAR c =  ID COMMA is = separated_list(COMMA, number) RIGHTPAR 
	{ Invariant(c,is) }
<<<<<<< HEAD
	| SOUNDVARIANCE LEFTPAR c =  ID RIGHTPAR 
	{ SoundVariance(c) }
	| MUTABLE LEFTPAR c =  ID RIGHTPAR 
	{ Mutable(c) }
=======
>>>>>>> 97fcb5303c6c4801b6abb4ecb2e8f3671c941f3d

	

number : 
	| n = NUM 
	{ int_of_string n }
