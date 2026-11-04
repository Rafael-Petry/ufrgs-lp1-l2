(*
---------------------------
Arquivo: aferidorTipos.ml
Descrição: Módulo que implementa o type infer do interpretador da linguagem L2.
---------------------------
*)

(*
Realiza a inferência de tipos da expressão representada pela AST.
@param ast: Árvore de sintaxe abstrata gerada pelo analisador sintático.
@return tipo: Tipo inferido da expressão representada pela AST.
*)
let executar ast =
    print_endline ("Aferidor de tipos executado com " ^ ast);
