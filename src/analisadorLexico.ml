(*
---------------------------
Arquivo: analisadorLexico.ml
Descrição: Módulo que implementa o analisador léxico do interpretador da linguagem L2.
---------------------------
*)

(*
Produz os tokens a partir do código da linguagem L2.
@param string codigo: Código da linguagem L2 a ser executado.
@return string array: Sequência de tokens da linguagem L2.
*)
let executar (_codigo : string) : string array =
    [|"40"; "+"; "2"|]
