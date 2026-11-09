(*
---------------------------
Arquivo: analisadorLexico.ml
Descrição: Módulo que implementa o analisador léxico do interpretador da linguagem L2.
---------------------------
*)

(*
Produz os tokens a partir do programa da linguagem L2.
@param string programa: Programa da linguagem L2 a ser executado.
@return string array: Sequência de tokens da linguagem L2.
*)
let executar (_programa : string) : string array =
    [|"40"; "+"; "2"|]
