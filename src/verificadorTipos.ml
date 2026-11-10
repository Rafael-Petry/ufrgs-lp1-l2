(*
---------------------------
Arquivo: verificadorTipos.ml
Descrição: Módulo que implementa o type infer do interpretador da linguagem L2.
---------------------------
*)

(*
Realiza a inferência de tipos da expressão representada pela AST.
@param Ast.ast ast: Árvore de sintaxe abstrata gerada pelo analisador sintático.
@return Ast.tp: Tipo inferido da expressão representada pela AST.
*)
let executar (_ast : Ast.ast) : Ast.tp =
    Ast.TInt

(*
Converte um tipo da AST para uma string.
@param Ast.tp tipo: Tipo da AST a ser convertido.
@return string: String representando o tipo da AST.
*)
let tipo_to_string (tipo : Ast.tp) : string =
    match tipo with
    | Ast.TInt -> "int"
    | Ast.TBool -> "bool"
    | Ast.TUnit -> "unit"
    | Ast.TRef _ -> "ref"
