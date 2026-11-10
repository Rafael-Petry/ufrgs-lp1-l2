(*
---------------------------
Arquivo: interpretador.ml
Descrição: Implementa o interpretador da linguagem L2, que chama todos módulos para executar o programa de entrada.
---------------------------
*)

(*
Executa o interpretador da linguagem L2 para o programa de entrada.
@param string programa: Programa da linguagem L2 a ser executado.
@return string: Tipo e valor obtido pelo avaliador.
*)
let executar (programa : string) : string =
    (* 1 - Executa o analisador léxico para obter os tokens a partir do programa de entrada *)
    let tokens : string array = AnalisadorLexico.executar programa in

    (* 2 - Executa o analisador sintático para obter a AST a partir dos tokens *)
    let ast : Ast.ast = AnalisadorSintatico.executar tokens in

    (* 3 - Executa o verificador de tipos para obter o tipo da AST *)
    let tipo : Ast.tp = VerificadorTipos.executar ast in

    (* 4 - Executa o avaliador para obter o valor da AST *)
    let valor : Ast.ast = Avaliador.executar ast in

    VerificadorTipos.tipo_to_string tipo ^ " " ^ Avaliador.valor_to_string valor