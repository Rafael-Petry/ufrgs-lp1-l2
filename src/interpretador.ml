(*
---------------------------
Arquivo: interpretador.ml
Descrição: "Main" do interpretador da linguagem L2, que chama os módulos de análise léxica, análise sintática, inferência de tipos e avaliação.
---------------------------
*)

(*
Função principal do interpretador que executa os tokens da linguagem L2 passado como argumento.
@param string: Código da linguagem L2 a ser executado.
@return valor: Valor obtido pelo avaliador.
*)
let () =
    AnalisadorLexico.executar "código de entrada";
    AnalisadorSintatico.executar "tokens gerados pelo analisador léxico";
    AferidorTipos.executar "ast gerada pelo analisador sintático";
    Avaliador.executar "ast gerada pelo analisador sintático";
    print_endline "Interpretador executado, retornando o valor final do avaliador";
