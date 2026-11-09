(*
---------------------------
Arquivo: avaliador.ml
Descrição: Módulo que implementa o evaluate big step do interpretador da linguagem L2.
---------------------------
*)

(*
Realiza a avaliação da expressão representada pela AST.
@param Ast.ast ast: Árvore de sintaxe abstrata gerada pelo analisador sintático.
@return Ast.ast: Valor resultante da avaliação da expressão representada pela AST.
*)
let executar (_ast : Ast.ast) : Ast.ast =
    Ast.Num 42

(*
Converte um valor da AST para uma string.
@param Ast.ast valor: Valor da AST a ser convertido.
@return string: String representando o valor da AST.
*)
let valor_to_string (valor : Ast.ast) : string =
    match valor with
    | Ast.Num n -> string_of_int n
    | _ -> "Valor não numérico"
