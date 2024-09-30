
# Tests

The folder "languages" includes the following language definitions:  
<ul>
<li> <b>lambda_div_print_1a_1b_2_3.lan</b>: 
<ul>
	<li> Lambda-calculus with integers, floating points, subtyping, a simple try error handler, and a print operation that adds strings into a buffer. 
	<li> Issue 1a: It makes use of call-by-name evaluation and therefore effects are duplicated. Fix: adopt the ordinary call-by-value beta-rule. 
	<li> Issue 1b: Call-by-value beta-rule requires evaluation context for evaluating the argument. Fix: add such evaluation context. 
	<li> Issue 2: Evaluator may "steal" the error from the try operator rather than letting try handle the error. Fix: Remove the declaration that the first argument of try is an error context. 
	<li> Issue 3: The typing rule of function application checks subtyping with the wrong direction: It checks that the type of the domain of the function is a subtype of the type of the argument. Fix: switch the direction of that subtyping formula. (That is, the type of the argument must be a subtype of the type of the domain of the function.)
</ul>
<li> <b>lambda_div_print_1aFixed_1b_2_3.lan</b>: Same as previous .lan but where issue 1a is fixed. 
<li> <b>lambda_div_print_1aFixed_1bFixed_2_3.lan</b>: Same as previous .lan but where issue 1b is fixed. 
<li> <b>lambda_div_print_1aFixed_1bFixed_2Fixed_3.lan</b>: Same as previous .lan but where issue 2 is fixed. 
<li> <b>lambda_div_print_1aFixed_1bFixed_2Fixed_3Fixed.lan</b>: Same as previous .lan but where issue 3 is fixed, that is, all the issues above are fixed. 
</ul>



Proof derivations are printed out in a textual representation. <a href="tests/proofs_textual_representation.md">See here how to read them</a>.


```
-- on lambda_div_print_1a_1b_2_3.lan of the folder "languages" -- 

The following tries to derive that call-by-name parameter passing does not duplicate effects.   

./lna 'true' lambda_div_print_1a_1b_2_3.lan 'NoDupliEff(CBN-BETA)'
```
output: <b>Proof not found</b> <br /> <br />




```
-- on lambda_div_print_1aFixed_1b_2_3.lan of the folder "languages" -- 

The following tries to derive that the ordinary beta-reduction (call-by-value) does not duplicate effects.   

./lna 'true' lambda_div_print_1aFixed_1b_2_3.lan 'NoDupliEff(BETA)'
```
output: <a href="tests/lambda_div_print_1aFixed_1b_2_3.proof.txt">proof derivation</a> <br /> <br />




```
-- on lambda_div_print_1aFixed_1b_2_3.lan of the folder "languages" -- 

The following tries to derive that beta-reduction [BETA] is ctx-compliant, but the language definition lacks evaluation context (v E).   

./lna 'true' lambda_div_print_1aFixed_1b_2_3.lan 'CtxCompliant(BETA)'
```
output: <b>Proof not found</b><br /> <br />




```
-- on lambda_div_print_1aFixed_1bFixed_2_3.lan of the folder "languages" -- 

The following tries to derive that beta-reduction [BETA] is ctx-compliant after we have added the evaluation context (v E).   

./lna 'true' lambda_div_print_1aFixed_1bFixed_2_3.lan 'CtxCompliant(BETA)'
```
output: <a href="tests/lambda_div_print_1aFixed_1bFixed_2_3.proof.txt">proof derivation</a><br /> <br />




```
-- on lambda_div_print_1aFixed_1bFixed_2_3.lan of the folder "languages" -- 

The following tries to derive that the language lets 'try' handle the error at its first argument, but the error context 'try F with e' may prevent that.     

./lna 'true' lambda_div_print_1aFixed_1bFixed_2_3.lan 'HandlesError(try,1)'
```
output: <b>Proof not found</b><br /> <br />




```
-- on lambda_div_print_1aFixed_1bFixed_2Fixed_3.lan of the folder "languages" -- 

The following tries to derive that the language lets 'try' handle the error at its first argument after we have removed the error context 'try F with e'. 

./lna 'true' lambda_div_print_1aFixed_1bFixed_2Fixed_3.lan 'HandlesError(try,1)'
```
output: <a href="tests/lambda_div_print_1aFixed_1bFixed_2Fixed_3.proof.txt">proof derivation</a><br /> <br />




```
-- on lambda_div_print_1aFixed_1bFixed_2Fixed_3.lan of the folder "languages" -- 

The following tries to derive that the typing rule of function application respects the contravariance of the domain of the function type, but the typing rule is incorrect and checks T1 <: T3 rather than T3 <: T1.

./lna 'true' lambda_div_print_1aFixed_1bFixed_2Fixed_3.lan 'ContraResp(T-APP-BAD,arrow)'
```
output: <b>Proof not found</b><br /> <br />




```
-- on lambda_div_print_1aFixed_1bFixed_2Fixed_3Fixed.lan of the folder "languages" -- 

The following tries to derive that the typing rule of function application respects the contravariance of the domain of the function type, after we have fixed the typing rule to check T3 <: T1.

./lna 'true' lambda_div_print_1aFixed_1bFixed_2Fixed_3Fixed.lan 'ContraResp(T-APP,arrow)'
```
output: <a href="tests/lambda_div_print_1aFixed_1bFixed_2Fixed_3Fixed.proof.txt">proof derivation</a>


