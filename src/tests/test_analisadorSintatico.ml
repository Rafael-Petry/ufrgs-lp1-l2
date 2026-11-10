(*
---------------------------
Arquivo: test_analisadorSintatico.ml
Descrição: Implementa os testes automatizados do analisador sintático da linguagem L2.
---------------------------
*)

(*
Testa a execução do analisador sintático da linguagem L2 para os tokens de entrada.
@return unit: Não há retorno.
*)
let test_executar () =
    let tokens = [| "40"; "+"; "2" |] in
    let ast = AnalisadorSintatico.executar tokens in
    Alcotest.(check bool) "AST produzida" true (ast = Ast.Binop(Ast.Sum, Ast.Num 40, Ast.Num 2))

(*
Executa os testes do analisador sintático.
@return unit: Não há retorno.
*)
let () =
    Alcotest.run "AnalisadorSintatico" [
        ("executar", [Alcotest.test_case "produz AST para 40 + 2" `Quick test_executar])
    ]
