(*
---------------------------
Arquivo: test_avaliador.ml
Descrição: Implementa os testes automatizados do avaliador da linguagem L2.
---------------------------
*)

(*
Testa a execução do avaliador da linguagem L2 para a AST de entrada.
@return unit: Não há retorno.
*)
let test_executar () =
    let expressao = Ast.Binop(Ast.Sum, Ast.Num 40, Ast.Num 2) in
    let resultado = Avaliador.executar expressao in
    Alcotest.(check bool) "valor avaliado" true (resultado = Ast.Num 42)

(*
Testa a conversão de valores para string.
@return unit: Não há retorno.
*)
let test_valor_to_string () =
    Alcotest.(check string) "valor numérico" "42" (Avaliador.valor_to_string (Ast.Num 42))

(*
Executa os testes do avaliador.
@return unit: Não há retorno.
*)
let () =
    Alcotest.run "Avaliador" [
        ("execucao", [Alcotest.test_case "avalia a expressao 40 + 2" `Quick test_executar]);
        ("conversao", [Alcotest.test_case "converte valores para string" `Quick test_valor_to_string])
    ]
