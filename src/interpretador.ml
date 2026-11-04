(*
---------------------------
Arquivo: interpretador.ml
Descrição: "Main" do interpretador da linguagem L2, que chama os módulos de análise sintática, inferência de tipos e avaliação.
---------------------------
*)

(*
Função principal do interpretador que executa os tokens da linguagem L2 passado como argumento.
@param string[]: Sequência de tokens da linguagem L2 a ser executada.
@return valor: Valor obtido pelo avaliador.
*)
let () =
    AnalisadorSintatico.executar "tokens de entrada";
    AferidorTipos.executar "ast gerada pelo analisador sintático";
    Avaliador.executar "ast gerada pelo analisador sintático";
    print_endline "Interpretador executado, retornando o valor final do avaliador";
