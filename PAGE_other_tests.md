
# <a name="tests"></a>Other Tests





```
-- on lists_lazy.lan of the folder "languages" -- 
Same test as before: laziness of lists.    
We asks whether cons has no evaluation contexts. 

./lna 'true' lists_lazy.lan 'Inductive(C,cons,)'     
(Nothing after the last comma means 'no indices of argument positions are inductive'.)
```
output: <a href="tests/lists_lazy.proof.txt">proof derivation</a><br /> <br />




```
-- on pairs_lazy.lan of the folder "languages" -- 

This language definition contains lazy pairs. 
Lang-n-assert can detect that pairs are lazy. To show a different test from the previous one, we base our test on the fact that terms (pair E E) are values for lazy pairs rather than (pair V V). 
The following asks for a proof derivation that the grammar production for 'pair' in the grammar of values is not inductive. 

./lna 'true' pairs_lazy.lan 'Inductive(V,pair,)' 
(Nothing after the last comma means 'no indices of argument positions are inductive'.)
```
output: <a href="tests/pairs_lazy.proof.txt">proof derivation</a><br /> <br />




```
-- on lambda_stlc.lan of the folder "languages" -- 

Lang-n-assert can answer the question: 'Does my language contain inductive types?'. 
It is enough to produce a proof for an assertion 'Inductive' for the metavariable T (of types) for a type constructor. 
For example, the simply typed lambda-calculus does have inductive types due to the function type: 

./lna 'true' lambda_stlc.lan 'Inductive(T,arrow,1,2)'
```
output: <a href="tests/lambda_stlc_inductiveTypes.proof.txt">proof derivation</a><br /> <br />




```
-- on pairs_lazy.lan of the folder "languages" -- 

The reduction rule [R-FST] for the operator 'fst' requires its argument to be a pair. 
Therefore, [R-FST] needs the evaluation context (fst C) to be 'ctx-compliant', which indeed exists. 

The following asks for a proof derivation that [R-FST] is 'ctx-compliant'

./lna 'true' pairs_lazy.lan 'CtxCompliant(R-FST)'          
```
output: <a href="tests/pairs_fst_ctxCompliant.proof.txt">proof derivation</a><br /> <br />



```
-- on lists_lazy.lan of the folder "languages" -- 

The reduction rule [R-HEAD] for the operator 'head' requires its argument to be constructed with 'cons'. 
Therefore, [R-HEAD] needs the evaluation context (head C) to be 'ctx-compliant', which indeed exists. 

The following asks for a proof derivation that [R-HEAD] is 'ctx-compliant'

./lna 'true' lists_lazy.lan 'CtxCompliant(R-HEAD)'          
```
output: <a href="tests/lists_head_ctxCompliant.proof.txt">proof derivation</a><br /> <br />






```
-- on lambda_ref_err_1aFixed_1bFixed_2Fixed_3.lan of the folder "languages" -- 

On the fixed language with references from these <a href="https://github.com/mcimini/lang-n-assert/tree/main?tab=readme-ov-file#tests_lambda_ref_err">tests</a>.  

The following asks for a proof derivation that the error 'error' can be typed at any type. 

./lna 'true' lambda_ref_err_1aFixed_1bFixed_2Fixed_3.lan 'ErrorAnyType(error)'
```
output: <a href="tests/lambda_ref_err_error_any_type.proof.txt">proof derivation</a><br /> <br />





```
-- on lambda_ref_err_1aFixed_1bFixed_2Fixed_3.lan of the folder "languages" -- 

On the fixed language with references from these <a href="https://github.com/mcimini/lang-n-assert/tree/main?tab=readme-ov-file#tests_lambda_ref_err">tests</a>.  

The following asks for a proof derivation that the reference type refType is invariant on its argument. 

./lna 'true' lambda_ref_err_1aFixed_1bFixed_2Fixed_3.lan 'Invariant(refType,1)'        
```
output: <a href="tests/lambda_ref_err_refType_invariant.proof.txt">proof derivation</a><br /> <br />

