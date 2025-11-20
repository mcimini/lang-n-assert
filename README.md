# Lang-n-Assert: A Prover for Language Logics

Author: Matteo Cimini (matteo_cimini@uml.edu)

<i>Language logics</i> are the counterpart of <i>program logics</i> that analyze programming languages rather than programs. 
Statements have the form {P} X {Q} where P and Q are assertions and X, the subject of analysis, can be the entire language at hand or some of its components such as a piece of grammar, a typing rule, a reduction rule or other parts of the language definition. 


<i>Language logics</i> are being proposed by this tool and its associated paper: <i>Coming Soon. Paper submitted, currently under review</i>. 

Lang-n-Assert is an automated theorem prover for a language logic. 

<br/>
To help browse this page: <a href="#instructions">Instructions</a> - <a href="#assertions">Assertions</a> - <a href="#tests">Tests</a>


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
<li> ./lna theory_1 ... theory_n precondition file.lan postcondition
	<br/> (see examples below)
</ul>

What it does:  
<ul>
<li> Loads the language definition in file.lan of the folder "languages". 
<li> Starts from precondition
<li> Traverses the language and tries to derive all possible assertions of the theories
<li> Output:
	<ul>
	<li> if postcondition has been derived: The tool returns a proof derivation of: precondition file.lan postcondition
	<li> if postcondition has not been derived: The tool displays "<i>Proof not found</i>" and an error message. 
	</ul>
</ul>

To clean: 
<ul>
<li> make clean 
	<br /> (removes compilation files and executable) 
</ul>
<br />

# <a name="assertions"></a>Assertions: 
Reference guide: See the paper associated with the tool. (<i>Coming Soon</i>)

The following are examples of assertions and their meaning:  

Theory <b>TdupEff</b>
<ul>
<li> <b>NoDupliEff(BETA)</b>: The reduction rule with name [BETA] does not lead to duplicate effects. 
<li> <b>Effectful</b>: The language is effectful, that is, a reduction can modify the state of the computation. 
</ul>

Theory <b>Teh</b>
<ul>
<li> <b>Inductive(T,arrow,1,2)</b>: The constructor <b>arrow</b> builds a member of the syntactic category with metavariable <b>T</b> and its first and second arguments are inductive, i.e., they are <b>T</b>s, as well. 
<li> <b>CtxCompliant(BETA)</b>: A reduction rule is <i>ctx-compliant</i> whenever: if the reduction rule [BETA] defines the behavior of an operator and some of its arguments are required to be values (or errors) for the rule to fire, then evaluation contexts are so defined for those arguments to be evaluated.  
<li> <b>HandlesError(try,1)</b>: The operator <b>try</b> handles the error at its first argument, and the error contexts for the <b>try</b> operator are so defined to indeed leave the handling of the error to <b>try</b> at runtime. 
</ul>

Theory <b>Tmut</b>
<ul>
<li> <b>Mutable(c)</b>: The type constructor <b>c</b> is for mutable data. 
<li> <b>SoundVariance(c)</b>: If the type constructor <b>c</b> is for mutable data, then its subtyping rule treats <b>c</b> as invariant. 
</ul>



Theory <b>Tvariance</b>
<ul>
<li> <b>Invariant(refType,1)</b>: The first argument of type constructor <b>refType</b> is invariant.
<li> <b>Contra(arrow,1)</b>: The first argument of type constructor <b>arrow</b> is contravariant.
<li> <b>ContraResp(T-APP,arrow)</b>: The typing rule [T-APP] respect the contravariance of the <b>arrow</b> type (function type). 
</ul>

Theory <b>TerrType</b>
<ul>
<li> <b>ErrorAnyType(error)</b>: The expression contructor <b>error</b> is an error and can be typed at any type. 
</ul>

 <b>... and more to be added over time ...</b>

<br />

# <a name="tests"></a>Tests

<ul>
<li> <a href="PAGE_tests_on_lambda_ref_err.md">Tests on 
"lambda_ref_err"</a> (Lambda-calculus with integers, floating points, subtyping, a simple try error handler, and references).  
<li> <a href="PAGE_tests_on_lambda_div_print.md">Tests on "lambda_div_print"</a> (Lambda-calculus with integers, floating points, subtyping, a simple try error handler, and a print operation that adds strings into a buffer). 
<li> <a href="PAGE_other_tests.md">Other tests</a> 
</ul>


