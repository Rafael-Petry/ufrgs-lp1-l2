(*
---------------------------
Arquivo: analisadorLexico.ml
Descrição: Módulo que implementa o analisador léxico do interpretador da linguagem L2.
---------------------------
*)

(*
Produz os tokens a partir do código da linguagem L2.
@param string: Código da linguagem L2 a ser executado.
@return string[]: Sequência de tokens da linguagem L2.
*)
let executar codigo =
    print_endline ("Analisador léxico executado com " ^ codigo);
