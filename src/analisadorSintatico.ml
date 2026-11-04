(*
---------------------------
Arquivo: analisadorSintatico.ml
Descrição: Módulo que implementa o analisador sintático do interpretador da linguagem L2.
---------------------------
*)

(*
Produz a AST a partir dos tokens da linguagem L2.
@param string[]: Sequência de tokens da linguagem L2 a ser executada.
@return ast: Árvore de sintaxe abstrata gerada pelo analisador sintático.
*)
let executar tokens =
    print_endline ("Analisador sintático executado com " ^ tokens);
