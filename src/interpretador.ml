(*
Executa o programa de teste padrão do interpretador.
@params codigo: Código da linguagem L2 a ser executado.
@return valor: Valor obtido pelo avaliador.
*)
let executar (codigo : string) : string =
    (* 1 - Executa o analisador léxico para obter os tokens a partir do código de entrada *)
    let tokens : string array = AnalisadorLexico.executar codigo in

    (* 2 - Executa o analisador sintático para obter a AST a partir dos tokens *)
    let ast : Ast.ast = AnalisadorSintatico.executar tokens in

    (* 3 - Executa o aferidor de tipos para obter o tipo da AST *)
    let tipo : Ast.tp = AferidorTipos.executar ast in

    (* 4 - Executa o avaliador para obter o valor da AST *)
    let valor : Ast.ast = Avaliador.executar ast in

    AferidorTipos.tipo_to_string tipo ^ " " ^ Avaliador.valor_to_string valor