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
    (* 1 - Obtém o código (texto) do programa na linguagem L2 *)
    let codigo = In_channel.with_open_bin 
        "src/tests/data/1.txt"
        In_channel.input_all in

    (* 2 - Executa o analisador léxico para obter os tokens a partir do código de entrada *)
    let tokens : string array = AnalisadorLexico.executar codigo in

    (* 3 - Executa o analisador sintático para obter a AST a partir dos tokens *)
    let ast : Ast.ast = AnalisadorSintatico.executar tokens in

    (* 4 - Executa o aferidor de tipos para obter o tipo da AST *)
    let tipo : Ast.tp = AferidorTipos.executar ast in

    (* 5 - Executa o avaliador para obter o valor da AST *)
    let valor : Ast.ast = Avaliador.executar ast in

    print_endline (AferidorTipos.tipo_to_string tipo ^ " " ^ Avaliador.valor_to_string valor);
