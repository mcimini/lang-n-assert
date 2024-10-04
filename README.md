# Lang-n-Assert: A Prover for Language Logics

Author: Matteo Cimini (matteo_cimini@uml.edu)

<i>Language logics</i> are the counterpart of <i>program logics</i> that analyze programming languages rather than programs. 
Statements have the form {P} X {Q} where P and Q are assertions and X, the subject of analysis, can be the entire language at hand or some of its components such as a piece of grammar, a typing rule, a reduction rule or other parts of the language definition. 


<i>Language logics</i> are being proposed by this tool and its associated paper: <i>Coming Soon. Paper submitted, currently under review</i>. 

Lang-n-Assert is an automated theorem prover for a language logic. 


# <a name="instructions"></a>Instructions 

Requirements: 
<ul>
<li> To compile and run: Ocaml with the Batteries and Menhir packages is required.
<br/> <a href="dependencies.txt">These versions of OCaml, Batteries and Menhir</a> are tested to work. (Some others may work) 
</ul>

<br/>
A quick way to install the dependencies through Opam switch is: 

```
opam switch import dependencies.txt --switch lnp && eval $(opam env)
```
<br/>

Quick usage: 
<ul>
<li> make 
<li> ./lna precondition file.lan postcondition
	<br/> (see examples below)
</ul>

What it does:  
<ul>
<li> Loads the language definition in file.lan of the folder "languages". 
<li> Starts from precondition
<li> Traverses the language and tries to derive all possible assertions
<li> Output:
	<ul>
	<li> if postcondition has been derived: The tool returns a proof derivation of: precondition file.lan postcondition
	<li> if postcondition has not been derived: The tool displays the error message "<i>Proof not found</i>". 
	</ul>
</ul>

To clean: 
<ul>
<li> make clean 
	<br /> (removes compilation files and executable) 
</ul>
<br />

# Assertions: 
Reference guide: See the paper associated with the tool. (<i>Coming Soon</i>)

The following are examples of assertions and their meaning:  

<ul>
<li> <b>NoDupliEff(BETA)</b>: The reduction rule with name [BETA] does not lead to duplicate effects. 
<li> <b>Effectful</b>: The language is effectful, that is, a reduction can modify the state of the computation. 
<li> <b>Inductive(T,arrow,1,2)</b>: The constructor <b>arrow</b> builds a member of the syntactic category with metavariable <b>T</b> and its first and second arguments are inductive, i.e., they are <b>T</b>s, as well. 
<li> <b>CtxCompliant(BETA)</b>: A reduction rule is <i>ctx-compliant</i> whenever: if the reduction rule [BETA] defines the behavior of an operator and some of its arguments are required to be values (or errors) for the rule to fire, then evaluation contexts are so defined for those arguments to be evaluated.  
<li> <b>HandlesError(try,1)</b>: The operator <b>try</b> handles the error at its first argument, and the error contexts for the <b>try</b> operator are so defined to indeed leave the handling of the error to <b>try</b> at runtime. 
<li> <b>Contravariant(arrow,1)</b>: The first argument of type constructor <b>arrow</b> is contravariant.
<li> <b>Invariant(refType,1)</b>: The first argument of type constructor <b>refType</b> is invariant.
<li> <b>ContraResp(T-APP,arrow)</b>: The typing rule [T-APP] respect the contravariance of the <b>arrow</b> type (function type). 
<li> <b>ErrorAnyType(error)</b>: The expression contructor <b>error</b> is an error and can be typed at any type. 
<li> <b>... and more to be added over time ...</b>
</ul>

<br />

# <a name="tests"></a>Tests

<ul>
<li> <a href="#tests_lambda_ref_err">Tests on "lambda_ref_err"</a> (Lambda-calculus with integers, floating points, subtyping, a simple try error handler, and references).  
<li> <a href="PAGE_tests_on_lambda_div_print.md">Tests on "lambda_div_print"</a> (Lambda-calculus with integers, floating points, subtyping, a simple try error handler, and a print operation that adds strings into a buffer). 
<li> <a href="PAGE_other_tests.md">Other tests</a> 
</ul>


# <a name="tests_lambda_ref_err"></a>Tests on "lambda_ref_err"

The folder "languages" includes language definitions: 
<ul>
<li> <b>lambda_ref_err_1a_1b_2_3.lan</b>: 
<ul>
	<li> Lambda-calculus with integers, floating points, subtyping, a simple try error handler, and references. 
	<li> Issue 1a: It makes use of call-by-name evaluation and therefore effects are duplicated. Fix: adopt the ordinary call-by-value beta-rule. 
	<li> Issue 1b: Call-by-value beta-rule requires evaluation context for evaluating the argument. Fix: add such evaluation context. 
	<li> Issue 2: Evaluator may "steal" the error from the try operator rather than letting try handle the error. Fix: Remove the declaration that the first argument of try is an error context. 
	<li> Issue 3: The typing rule of function application checks subtyping with the wrong direction: It checks that the type of the domain of the function is a subtype of the type of the argument. Fix: switch the direction of that subtyping formula. (That is, the type of the argument must be a subtype of the type of the domain of the function.)
</ul>
<li> <b>lambda_ref_err_1aFixed_1b_2_3.lan</b>: Same as previous .lan but where issue 1a is fixed. 
<li> <b>lambda_ref_err_1aFixed_1bFixed_2_3.lan</b>: Same as previous .lan but where issue 1b is fixed. 
<li> <b>lambda_ref_err_1aFixed_1bFixed_2Fixed_3.lan</b>: Same as previous .lan but where issue 2 is fixed. 
<li> <b>lambda_ref_err_1aFixed_1bFixed_2Fixed_3Fixed.lan</b>: Same as previous .lan but where issue 3 is fixed, that is, all the issues above are fixed. 
</ul>


 <br />

Proof derivations are printed out in a textual representation. <a href="tests/proofs_textual_representation.md">See here how to read them</a>.

 <br />
  <br />

```
-- on lambda_ref_err_1a_1b_2_3.lan of the folder "languages" -- 

The following tries to derive that call-by-name parameter passing does not duplicate effects.   

./lna 'true' lambda_ref_err_1a_1b_2_3.lan 'NoDupliEff(CBN-BETA)'
```
output: <b>Proof not found</b>. 
The target of the reduction rule  <b>[CBN-BETA]</b> is  <b>E1[E2/x] </b> and performs a substitution of a possibly effectful term, which may lead to a duplication of effects.
 <br /> <br />




```
-- on lambda_ref_err_1aFixed_1b_2_3.lan of the folder "languages" -- 

The following tries to derive that the ordinary beta-reduction (call-by-value) does not duplicate effects.   

./lna 'true' lambda_ref_err_1aFixed_1b_2_3.lan 'NoDupliEff(BETA)'
```
output: <a href="tests/lambda_ref_err_1aFixed_1b_2_3.proof.txt">proof derivation</a> <br /> <br />




```
-- on lambda_ref_err_1aFixed_1b_2_3.lan of the folder "languages" -- 

The following tries to derive that beta-reduction [BETA] is ctx-compliant, but the language definition lacks evaluation context (v E).   

./lna 'true' lambda_ref_err_1aFixed_1b_2_3.lan 'CtxCompliant(BETA)'
```
output: <b>Proof not found</b>. 
An evaluation context is missing for the following variables used in <b>[BETA]</b>: <b>V</b>.
<br /> <br />




```
-- on lambda_ref_err_1aFixed_1bFixed_2_3.lan of the folder "languages" -- 

The following tries to derive that beta-reduction [BETA] is ctx-compliant after we have added the evaluation context (v E).   

./lna 'true' lambda_ref_err_1aFixed_1bFixed_2_3.lan 'CtxCompliant(BETA)'
```
output: <a href="tests/lambda_ref_err_1aFixed_1bFixed_2_3.proof.txt">proof derivation</a><br /> <br />




```
-- on lambda_ref_err_1aFixed_1bFixed_2_3.lan of the folder "languages" -- 

The following tries to derive that the language lets 'try' handle the error at its first argument, but the error context 'try F with e' may prevent that.     

./lna 'true' lambda_ref_err_1aFixed_1bFixed_2_3.lan 'HandlesError(try,1)'
```
output: <b>Proof not found</b>. 
Argument number <b>1</b> of the operator <b>try</b> is subject to an error context and may not handle the error.<br /> <br />




```
-- on lambda_ref_err_1aFixed_1bFixed_2Fixed_3.lan of the folder "languages" -- 

The following tries to derive that the language lets 'try' handle the error at its first argument after we have removed the error context 'try F with e'. 

./lna 'true' lambda_ref_err_1aFixed_1bFixed_2Fixed_3.lan 'HandlesError(try,1)'
```
output: <a href="tests/lambda_ref_err_1aFixed_1bFixed_2Fixed_3.proof.txt">proof derivation</a><br /> <br />




```
-- on lambda_ref_err_1aFixed_1bFixed_2Fixed_3.lan of the folder "languages" -- 

The following tries to derive that the typing rule of function application respects the contravariance of the domain of the function type, but the typing rule is incorrect and checks T1 <: T3 rather than T3 <: T1.

./lna 'true' lambda_ref_err_1aFixed_1bFixed_2Fixed_3.lan 'ContraResp(T-APP-BAD,arrow)'
```
output: <b>Proof not found</b>. 
Typing rule <b>[T-APP-BAD]</b> makes use of <b>T1</b> in contravariant position for arrow in premise <b>Gamma | Sigma |- E1 : (arrow T1
T2)</b> but the following premises do not respect this contravarince: <b>T1 <: T3</b>.<br /> <br />




```
-- on lambda_ref_err_1aFixed_1bFixed_2Fixed_3Fixed.lan of the folder "languages" -- 

The following tries to derive that the typing rule of function application respects the contravariance of the domain of the function type, after we have fixed the typing rule to check T3 <: T1.

./lna 'true' lambda_ref_err_1aFixed_1bFixed_2Fixed_3Fixed.lan 'ContraResp(T-APP,arrow)'
```
output: <a href="tests/lambda_ref_err_1aFixed_1bFixed_2Fixed_3Fixed.proof.txt">proof derivation</a>


