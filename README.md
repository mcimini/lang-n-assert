# Lang-n-Assert: A Prover for Language Logics

Author: Matteo Cimini (matteo_cimini@uml.edu)

<i>Language logics</i> are the counterpart of <i>program logics</i> that analyze programming languages rather than programs. 

<i>Language logics</i> are being proposed by this tool and its associated paper: <i>Coming Soon</i>. 

Lang-n-Assert is an automated theorem prover for a language logic. 


# <a name="instructions"></a>Instructions 

Requirements: 
<ul>
<li> To compile and run: Ocaml with the Batteries and Menhir packages is required.
<br/> <a href="dependencies.txt">These versions of OCaml, Batteries and Menhir</a> are tested to work. (Some others may work) 
</ul>

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



# <a name="tests"></a>Tests

The folder "languages" contains language definitions, including: 
<ul>
<li> <b>lambda_div_print_1a_1b_2_3.lan</b>: 
<ul>
	<li> Lambda-calculus with integers, floating points, subtyping, a simple try error handler, and a print operation that adds strings into a buffer. 
	<li> Issue 1a: It makes use of call-by-name evaluation and therefore effects are duplicated. Fix: adopt the ordinary call-by-value beta-rule. 
	<li> Issue 1b: Call-by-value beta-rule requires evaluation context for evaluating the argument. Fix: add such evaluation context. 
	<li> Issue 2: Evaluator may "steal" the error from the try operator rather than letting try handle the error. Fix: Remove the declaration that the first argument of try is an error context. 
	<li> Issue 3: The typing rule of function application checks rather than the other way around. Fix: switch the direction of that subtyping formula. 
</ul>
<li> <b>lambda_div_print_1aFixed_1b_2_3.lan</b>: Same as previous .lan but where issue 1a is fixed. 
<li> <b>lambda_div_print_1aFixed_1bFixed_2_3.lan</b>: Same as previous .lan but where issue 1b is fixed. 
<li> <b>lambda_div_print_1aFixed_1bFixed_2Fixed_3.lan</b>: Same as previous .lan but where issue 2 is fixed. 
<li> <b>lambda_div_print_1aFixed_1bFixed_2Fixed_3Fixed.lan</b>: Same as previous .lan but where issue 3 is fixed, that is, all the issues above are fixed. 
</ul>

##Assertions: 
Reference guide: See the paper associated with the tool. (<i>Coming Soon</i>)

The following are examples of assertions and their meaning:  

<ul>
<li> <b>NoDupliEff(BETA)</b>: The reduction rule with name [BETA] does not lead to duplicate effects. 
<li> <b>CtxCompliant(BETA)</b>: A reduction rule is <i>ctx-compliant</i> whenever: if the reduction rule [BETA] defines the behavior of an operator and some of its arguments are required to be values (or errors) for the rule to fire, then evaluation contexts are so defined for those arguments to be evaluated.  
<li> <b>HandlesError(try,1)</b>: The operator <b>try</b> handles the error at its first argument, and the error contexts for the <b>try</b> operator are so defined to indeed leave the handling of the error to <b>try</b> at runtime. 
<li> <b>ContraResp(T-APP,arrow)</b>: The typing rule [T-APP] respect the contravariance of the <b>arrow</b> type (function type). 
</ul>


Proof derivations are printed out in a textual representation. <a href="tests/proofs_textual_representation.md">See here how to read them</a>.


```
-- on lambda_div_print_1a_1b_2_3.lan of the folder "languages" -- 

The following tries to derive that call-by-name parameter passing does not duplicate effects.   

./lna 'true' lambda_div_print_1a_1b_2_3.lan 'NoDupliEff(CBN-BETA)'
```
output: <b>Proof not found</b>



```
-- on lambda_div_print_1aFixed_1b_2_3.lan of the folder "languages" -- 

The following tries to derive that the ordinary beta-reduction (call-by-value) does not duplicate effects.   

./lna 'true' lambda_div_print_1aFixed_1b_2_3.lan 'NoDupliEff(BETA)'
```
output: <a href="tests/lambda_div_print_1aFixed_1b_2_3.proof.txt">proof derivation (textual representation)</a>



```
-- on lambda_div_print_1aFixed_1b_2_3.lan of the folder "languages" -- 

The following tries to derive that beta-reduction [BETA] is ctx-compliant, but the language definition lacks evaluation context <b>(v E)</b>.   

./lna 'true' lambda_div_print_1aFixed_1b_2_3.lan 'CtxCompliant(BETA)'
```
output: <b>Proof not found</b>



```
-- on lambda_div_print_1aFixed_1bFixed_2_3.lan of the folder "languages" -- 

The following tries to derive that beta-reduction [BETA] is ctx-compliant after we have added the evaluation context <b>(v E)</b>.   

./lna 'true' lambda_div_print_1aFixed_1bFixed_2_3.lan 'CtxCompliant(BETA)'
```
output: <a href="tests/lambda_div_print_1aFixed_1bFixed_2_3.proof.txt">proof derivation (textual representation)</a>



```
-- on lambda_div_print_1aFixed_1bFixed_2_3.lan of the folder "languages" -- 

The following tries to derive that the language lets <b>try</b> handle the error at its first argument, but the error context <b>try F with e</b> may prevent that.     

./lna 'true' lambda_div_print_1aFixed_1bFixed_2_3.lan 'HandlesError(try,1)'
```
output: <b>Proof not found</b>



```
-- on lambda_div_print_1aFixed_1bFixed_2Fixed_3.lan of the folder "languages" -- 

The following tries to derive that the language lets <b>try</b> handle the error at its first argument after we have removed the error context <b>try F with e</b>. 

./lna 'true' lambda_div_print_1aFixed_1bFixed_2Fixed_3.lan 'HandlesError(try,1)'
```
output: <a href="tests/lambda_div_print_1aFixed_1bFixed_2Fixed_3.proof.txt">proof derivation (textual representation)</a>



```
-- on lambda_div_print_1aFixed_1bFixed_2Fixed_3.lan of the folder "languages" -- 

The following tries to derive that the typing rule of function application respects the contravariance of the domain of the function type, but the typing rule is incorrect and checks <b>T_1 <: T_3</b> rather than <b>T_3 <: T_1</b>.

./lna 'true' lambda_div_print_1aFixed_1bFixed_2Fixed_3.lan 'ContraResp(T-APP-BAD,arrow)'
```
output: <b>Proof not found</b>



```
-- on lambda_div_print_1aFixed_1bFixed_2Fixed_3Fixed.lan of the folder "languages" -- 

The following tries to derive that the typing rule of function application respects the contravariance of the domain of the function type, after we have fixed the typing rule to check <b>T_3 <: T_1</b>.

./lna 'true' lambda_div_print_1aFixed_1bFixed_2Fixed_3Fixed.lan 'ContraResp(T-APP,arrow)'
```
output: <a href="tests/lambda_div_print_1aFixed_1bFixed_2Fixed_3.proof.txt">proof derivation (textual representation)</a>



