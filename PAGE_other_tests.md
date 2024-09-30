
# <a name="tests"></a>Other Tests



```
-- on lists.lan of the folder "languages" -- 

This language definition contains lazy lists. 
Lang-n-assert can detect that lists are lazy by failing to find evaluation contexts for the operator 'cons'. That is, its components are not evaluated. 

./lna 'true' lists.lan 'Inductive(C,cons,1)'
./lna 'true' lists.lan 'Inductive(C,cons,2)'
./lna 'true' lists.lan 'Inductive(C,cons,1,2)'
```
output: <b>Proof not found</b>   
output: <b>Proof not found</b>   
output: <b>Proof not found</b>  <br /> <br />




```
-- on lists.lan of the folder "languages" -- 
Same test as before: laziness of lists.    
This time around, we directly asks whether cons has no evaluation contexts. 

./lna 'true' lists.lan 'Inductive(C,cons,)'     
(Nothing after the last comma means 'no indices of argument positions are inductive'.)
```
output: <a href="tests/lists_lazy.proof.txt">proof derivation</a><br /> <br />




```
-- on pairs.lan of the folder "languages" -- 

This language definition contains lazy pairs. 
Lang-n-assert can detect that pairs are lazy. To show a different test from the previous one, we base our test on the fact that terms (pair E E) are values for lazy pairs rather than (pair V V). 
The following asks for a proof derivation that the grammar production for 'pair' in the grammar of values is not inductive. 

./lna 'true' pairs.lan 'Inductive(V,pair,)' 
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
-- on pairs.lan of the folder "languages" -- 

The reduction rule [R-FST] for the operator 'fst' requires its argument to be a pair. 
Therefore, [R-FST] needs the evaluation context (fst C) to be 'ctx-compliant', which indeed exists. 

The following asks for a proof derivation that [R-FST] is 'ctx-compliant'

./lna 'true' pairs.lan 'CtxCompliant(R-FST)'          
```
output: <a href="tests/pairs_fst_ctxCompliant.proof.txt">proof derivation</a>

