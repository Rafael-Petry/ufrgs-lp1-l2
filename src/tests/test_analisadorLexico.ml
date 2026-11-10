(*
---------------------------
Arquivo: test_analisadorLexico.ml
Descrição: Implementa os testes automatizados do analisador léxico da linguagem L2.
---------------------------
*)

(*
Testa a execução do analisador léxico da linguagem L2 para o programa de entrada.
@return unit: Não há retorno.
*)
let test_executar () =
    let resultado = AnalisadorLexico.executar "40 + 2" in
    Alcotest.(check (array string)) "tokens produzidos" [| "40"; "+"; "2" |] resultado

(*
Executa os testes do analisador léxico.
@return unit: Não há retorno.
*)
let () =
    Alcotest.run "AnalisadorLexico" [
        ("executar", [Alcotest.test_case "produz tokens para 40 + 2" `Quick test_executar])
    ]
