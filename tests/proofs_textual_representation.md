This is an example with 

```
./lna 'true' lambda_div_print_1aFixed_1b_2_3.lan 'NoDupliEff(BETA)' 
```

and its <a href="tests/lambda_div_print_1aFixed_1b_2_3.proof.txt">proof derivation</a>. 


The root of the proof derivation is at the end of the file: 


```
{ true } (G,I) { <i>all assertions</i> } 
---- (CONSEQUENCE)
{ true } (G,I) { NoDupli(BETA) }
```

As the language definition in <b>lambda_div_print_1aFixed_1b_2_3.lan</b> is lengthy, we do not display it between the pre and postcondition.   
We simply use <b>(G,I)</b> that represent the grammar <b>G</b> of the language and the inference system (set of inference rules) <b>I</b> of the language. 

```
---- (CONSEQUENCE) 
```

is, essentially a horizontal line of an inference rule and says that we have applied the proof rule <b>(CONSEQUENCE)</b>.   
Above <b>---- (CONSEQUENCE)</b> we have a statement that has derived all the assertions that the system have derived from G and I.    
With <b>(CONSEQUENCE)</b>, <b>NoDupli(BETA)</b> has been singled out from those assertions to derive the <b>{ true } (G,I) { NoDupli(BETA) }</b>. 



<i>all assertions</i> is derived with the proof rule <b>(LAN)</b> in the following format. 

```
{ true } Type <i>assertions from Type</i> 
{ <i>assertions from Type</i> }  Value { <i>assertions from Type and Value</i> } 
... and for all grammar categories ... 

{ <i>assertions from all grammar categories</i> } [S-INT-FLOAT] { <i>assertions from all grammar categories and rule [S-INT-FLOAT] </i> } (To recall, [S-INT-FLOAT] is int <: float)
{ <i>assertions from all grammar categories and rule [S-INT-FLOAT] </i> } [S-REFL-INT] { <i>assertions from all grammar categories and rule [S-INT-FLOAT] and [S-REFL-INT] </i> } (To recall, [S-INT-FLOAT] is int <: int)
... and for all inference rules ... 
---- (LAN)
{ true } (G,I) <i>all assertions</i>
```

To make the output shorter: Since there are many assertions, and since the postconditions of a derivation are then used as precondition of the next derivation as they are, we simply write 'preconditions' as in 

```
{ true } Type { true /\ Inductive(T, int, []) /\ Inductive(T, float, []) /\ Inductive(T, arrow, [1; 2]) /\ Inductive(T, unitt, []) } 

preconditions Value { true ... all other assertions }
```

with the understanding that 'preconditions' are always the postconditions of the previous derivation. 


The proof derivations for a grammar category derives all <b>Inductive</b> assertions, as in: 

```
{ true } Type { true /\ Inductive(T, int, []) /\ Inductive(T, float, []) /\ Inductive(T, arrow, [1; 2]) /\ Inductive(T, unitt, []) } 
```


The assertions for an inference rule are derived with proof rule <b>(ITERATE)</b> as in 

```
---- (ITERATE)
 preconditions  S-INT-FLOAT { <i>assertions from all grammar categories and rule [S-INT-FLOAT] </i> } 
```

This proof rule takes <b>S-INT-FLOAT</b> and tries to derive an assertion <b>NoDupliEff</b> for it, then tries to derive <b>CtxCompliant</b> for it, then <b>ContraResp</b> for it, and so on.    
The assertions that can be derived are then in the postcondition. And are passed to the next inference rule as preconditions. We therefore use again 'preconditions' because there are many assertions.   
After having analyzed the last inference rule, the postcondition contains all the assertions that have been derived from grammar rules and inference rules, which we called <i>all assertions</i>.   
This, then, is the postcondition of <b>{ true } (G,I) <i>all assertions</i></b> through <b>(LAN)</b>.   
And <b>(CONSEQUENCE)</b>, then, singles out the assertions sought for from there. 





