(*
---------------------------
Arquivo: analisadorSintatico.ml
Descrição: Módulo que implementa o parser do interpretador da linguagem L2.
---------------------------
*)

(*
Realiza o parsing dos tokens da linguagem L2 para produzir a AST.
@param string[]: Sequência de tokens da linguagem L2 a ser executada.
@return ast: Árvore de sintaxe abstrata gerada pelo analisador sintático.
*)
let executar tokens =
    print_endline ("Analisador sintático executado com " ^ tokens);
