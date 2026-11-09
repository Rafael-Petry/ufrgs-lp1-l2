(*
---------------------------
Arquivo: test_interpretador.ml
Descrição: Implementa os testes automatizados do interpretador da linguagem L2.
---------------------------
*)

(*
Testa a execução do interpretador da linguagem L2 para o programa de entrada.
@return unit: Não há retorno.
*)
let interpreta_arquivo () =
    let caminho =
        if Sys.file_exists "data/1.txt" then "data/1.txt"
        else "src/tests/data/1.txt"
    in
    let programa = In_channel.with_open_bin
        caminho
        In_channel.input_all in

    let resultado = Interpretador.executar(programa) in
    Alcotest.(check string) "resultado do interpretador" "int 41" resultado

(*
Executa os testes do interpretador.
@return unit: Não há retorno.
*)
let () =
    Alcotest.run "Interpretador" [("execucao", [Alcotest.test_case "interpreta data/1.txt" `Quick interpreta_arquivo])]
