(*
---------------------------
Arquivo: analisadorSintatico.ml
Descrição: Módulo que implementa o analisador sintático do interpretador da linguagem L2.
---------------------------
*)

(*
Produz a AST a partir dos tokens da linguagem L2.
@param string array tokens: Sequência de tokens da linguagem L2 a ser executada.
@return Ast.ast: Árvore de sintaxe abstrata gerada pelo analisador sintático.
*)
let executar (_tokens : string array) : Ast.ast =
    Ast.Binop(Ast.Sum, Ast.Num 40, Ast.Num 2)
