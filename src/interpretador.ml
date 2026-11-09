(*
---------------------------
Arquivo: interpretador.ml
Descrição: "Main" do interpretador da linguagem L2, que chama os módulos de análise léxica, análise sintática, inferência de tipos e avaliação.
---------------------------
*)

(*
Função principal do interpretador que executa os tokens da linguagem L2 passado como argumento.
@param string codigo: Código da linguagem L2 a ser executado.
@return valor: Valor obtido pelo avaliador.
*)
let () : unit =
    let codigo = read_line () in (* 1 - Obtém o código (texto) do programa na linguagem L2 *)
    let tokens : string array = AnalisadorLexico.executar codigo in (* 2 - Executa o analisador léxico para obter os tokens a partir do código de entrada *)
    let ast : Ast.ast = AnalisadorSintatico.executar tokens in (* 3 - Executa o analisador sintático para obter a AST a partir dos tokens *)
    let tipo : Ast.tp = AferidorTipos.executar ast in (* 4 - Executa o aferidor de tipos para obter o tipo da AST *)
    let valor : Ast.ast = Avaliador.executar ast in (* 5 - Executa o avaliador para obter o valor da AST *)

    print_endline (AferidorTipos.tipo_to_string tipo ^ " " ^ Avaliador.valor_to_string valor)
