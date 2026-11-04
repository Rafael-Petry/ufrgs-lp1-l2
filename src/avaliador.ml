(*
---------------------------
Arquivo: avaliador.ml
Descrição: Módulo que implementa o evaluate big step do interpretador da linguagem L2.
---------------------------
*)

(*
Realiza a avaliação da expressão representada pela AST.
@param ast: Árvore de sintaxe abstrata gerada pelo analisador sintático.
@return valor: Valor resultante da avaliação da expressão representada pela AST.
*)
let executar ast =
    print_endline ("Avaliador executado com " ^ ast);
