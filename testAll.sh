./lna 'true' lambda_div_print_1a_1b_2_3.lan 'NoDupliEff(CBN-BETA)' 
./lna 'true' lambda_div_print_1aFixed_1b_2_3.lan 'NoDupliEff(BETA)' | tail -n +2 > tests/lambda_div_print_1aFixed_1b_2_3.proof.txt
./lna 'true' lambda_div_print_1aFixed_1b_2_3.lan 'CtxCompliant(BETA)'
./lna 'true' lambda_div_print_1aFixed_1bFixed_2_3.lan 'CtxCompliant(BETA)' | tail -n +2 > tests/lambda_div_print_1aFixed_1bFixed_2_3.proof.txt
./lna 'true' lambda_div_print_1aFixed_1bFixed_2_3.lan 'HandlesError(try,1)'
./lna 'true' lambda_div_print_1aFixed_1bFixed_2Fixed_3.lan 'HandlesError(try,1)' | tail -n +2 > tests/lambda_div_print_1aFixed_1bFixed_2Fixed_3.proof.txt
./lna 'true' lambda_div_print_1aFixed_1bFixed_2Fixed_3.lan 'ContraResp(T-APP-BAD,arrow)'
./lna 'true' lambda_div_print_1aFixed_1bFixed_2Fixed_3Fixed.lan 'ContraResp(T-APP,arrow)' | tail -n +2 > tests/lambda_div_print_1aFixed_1bFixed_2Fixed_3Fixed.proof.txt
./lna 'true' lists_lazy.lan 'Inductive(C,cons,1)'
./lna 'true' lists_lazy.lan 'Inductive(C,cons,2)'
./lna 'true' lists_lazy.lan 'Inductive(C,cons,1,2)'
./lna 'true' lists_lazy.lan 'Inductive(C,cons,)' | tail -n +2 > tests/lists_lazy.proof.txt
./lna 'true' pairs_lazy.lan 'Inductive(V,pair,)' | tail -n +2 > tests/pairs_lazy.proof.txt
./lna 'true' lambda_stlc.lan 'Inductive(T,arrow,1,2)' | tail -n +2 > tests/lambda_stlc_inductiveTypes.proof.txt
./lna 'true' pairs_lazy.lan 'CtxCompliant(R-FST)' | tail -n +2 > tests/pairs_fst_ctxCompliant.proof.txt
