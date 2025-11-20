
# Tests on "lambda_ref_err"

The folder "languages" includes the following language definitions:  
<ul>
<li> <b>lambda_ref_err_1a_1b_2_3.lan</b>: 
<ul>
	<li> Lambda-calculus with integers, floating points, subtyping, a simple try error handler, and a print operation that adds strings into a buffer. 
	<li> Issue 1a: It makes use of call-by-name evaluation and therefore effects are duplicated. Fix: adopt the ordinary call-by-value beta-rule. 
	<li> Issue 1b: Call-by-value beta-rule requires evaluation context for evaluating the argument. Fix: add such evaluation context. 
	<li> Issue 2: Evaluator may "steal" the error from the try operator rather than letting try handle the error. Fix: Remove the declaration that the first argument of try is an error context. 
	<li> Issue 3: The subytping rule for the reference type declares the reference type as covariant, which is unsound. Fix: Modify the subtyping rule to make the reference type invariant. 
</ul>
<li> <b>lambda_ref_err_1aFixed_1b_2_3.lan</b>: Same as previous .lan but where issue 1a is fixed. 
<li> <b>lambda_ref_err_1aFixed_1bFixed_2_3.lan</b>: Same as previous .lan but where issue 1b is fixed. 
<li> <b>lambda_ref_err_1aFixed_1bFixed_2Fixed_3.lan</b>: Same as previous .lan but where issue 2 is fixed. 
<li> <b>lambda_ref_err_1aFixed_1bFixed_2Fixed_3Fixed.lan</b>: Same as previous .lan but where issue 3 is fixed with subtyping rule Ref T <: Ref T, that is, all the issues above are fixed. 
<li> <b>lambda_ref_err_1aFixed_1bFixed_2Fixed_3Fixed_another_.lan</b>: Fixes issue 3 equivalently with a subtyping rule with an explicit equality premise: Ref T1 <: Ref T2 <== T1 = T2. 
</ul>

 <br />

Proof derivations are printed out in a textual representation. <a href="tests/proofs_textual_representation.md">See here how to read them</a>.

 <br />
  <br />

```
-- on lambda_ref_err_1a_1b_2_3.lan of the folder "languages" -- 

The following tries to derive that call-by-name parameter passing does not duplicate effects.   

./lna TdupEff 'true' lambda_ref_err_1a_1b_2_3.lan 'NoDupliEff(CBN-BETA)'
```
output: <b>Proof not found</b>. 
The target of the reduction rule  <b>[CBN-BETA]</b> is  <b>E1[E2/x] </b> and performs a substitution of a possibly effectful term, which may lead to a duplication of effects.
 <br /> <br />




```
-- on lambda_ref_err_1aFixed_1b_2_3.lan of the folder "languages" -- 

The following tries to derive that the ordinary beta-reduction (call-by-value) does not duplicate effects.   

./lna TdupEff 'true' lambda_ref_err_1aFixed_1b_2_3.lan 'NoDupliEff(BETA)'
```
output: <a href="tests/lambda__ref_err_1aFixed_1b_2_3.proof.txt">proof derivation</a> <br /> <br />




```
-- on lambda_ref_err_1aFixed_1b_2_3.lan of the folder "languages" -- 

The following tries to derive that beta-reduction [BETA] is ctx-compliant, but the language definition lacks evaluation context (v E).   

./lna Teh 'true' lambda_ref_err_1aFixed_1b_2_3.lan 'CtxCompliant(BETA)'
```
output: <b>Proof not found</b>. 
An evaluation context is missing for the following variables used in <b>[BETA]</b>: <b>V</b>.
<br /> <br />




```
-- on lambda_ref_err_1aFixed_1bFixed_2_3.lan of the folder "languages" -- 

The following tries to derive that beta-reduction [BETA] is ctx-compliant after we have added the evaluation context (v E).   

./lna Teh 'true' lambda_ref_err_1aFixed_1bFixed_2_3.lan 'CtxCompliant(BETA)'
```
output: <a href="tests/lambda_ref_err_1aFixed_1bFixed_2_3.proof.txt">proof derivation</a><br /> <br />




```
-- on lambda__ref_err_1aFixed_1bFixed_2_3.lan of the folder "languages" -- 

The following tries to derive that the language lets 'try' handle the error at its first argument, but the error context 'try F with e' may prevent that.     

./lna Teh 'true' lambda_ref_err_1aFixed_1bFixed_2_3.lan 'HandlesError(try,1)'
```
output: <b>Proof not found</b>. 
Argument number <b>1</b> of the operator <b>try</b> is subject to an error context and may not handle the error.<br /> <br />




```
-- on lambda_ref_err_1aFixed_1bFixed_2Fixed_3.lan of the folder "languages" -- 

The following tries to derive that the language lets 'try' handle the error at its first argument after we have removed the error context 'try F with e'. 

./lna Teh 'true' lambda_ref_err_1aFixed_1bFixed_2Fixed_3.lan 'HandlesError(try,1)'
```
output: <a href="tests/lambda_ref_err_1aFixed_1bFixed_2Fixed_3.proof.txt">proof derivation</a><br /> <br />




```
-- on lambda_ref_err_1aFixed_1bFixed_2Fixed_3.lan of the folder "languages" -- 

The following tries to derive that refType declares a sound variance for its argument, but its subtyping rule declares the argument as covariant despite refType being mutable. Notice that start with precondition Mutable(refType). 

./lna Tmut 'Mutable(refType)' lambda_ref_err_1aFixed_1bFixed_2Fixed_3.lan 'SoundVariance(refType)'
```
output: <b>Proof not found</b>. 
Subtyping rule <b>[S-REF-BAD]</b>[ declares the argument <b>T1</b> as covariant with premise: <b>T1 <: T2</b>. But <b>refType</b> is mutable and should be invariant. 



```
-- on lambda_ref_err_1aFixed_1bFixed_2Fixed_3Fixed.lan of the folder "languages" -- 

The following tries to derive that refType declares a sound variance for its argument after we have replaced the subtyping rule of refType with the rule refType T <: refType T, that is, invariant. Notice that start with precondition Mutable(refType). 

./lna Tmut 'Mutable(refType)' lambda_ref_err_1aFixed_1bFixed_2Fixed_3Fixed.lan 'SoundVariance(refType)'
```
output: <a href="tests/lambda_ref_err_1aFixed_1bFixed_2Fixed_3Fixed.proof.txt">proof derivation</a>




```
-- on lambda_ref_err_1aFixed_1bFixed_2Fixed_3Fixed_another.lan of the folder "languages" -- 

The following tries to derive that refType declares a sound variance for its argument after we have replaced the subtyping rule of refType with a rule with an explicit equality premise: Ref T1 <: Ref T2 <== T1 = T2, that is, invariant. Notice that start with precondition Mutable(refType). 

./lna Tmut 'Mutable(refType)' lambda_ref_err_1aFixed_1bFixed_2Fixed_3Fixed_another.lan 'SoundVariance(refType)'
```
output: <a href="tests/lambda_ref_err_1aFixed_1bFixed_2Fixed_3Fixed_another.proof.txt">proof derivation</a>


