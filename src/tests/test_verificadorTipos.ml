(*
---------------------------
Arquivo: test_verificadorTipos.ml
Descrição: Implementa os testes automatizados do verificador de tipos da linguagem L2.
---------------------------
*)

(*
Testa a execução do verificador de tipos da linguagem L2 para a AST de entrada.
@return unit: Não há retorno.
*)
let test_executar () =
    let ast = Ast.Binop(Ast.Sum, Ast.Num 40, Ast.Num 2) in
    let tipo = VerificadorTipos.executar ast in
    Alcotest.(check bool) "tipo inferido" true (tipo = Ast.TInt)

(*
Testa a conversão de tipos para string.
@return unit: Não há retorno.
*)
let test_tipo_to_string () =
    Alcotest.(check string) "tipo int" "int" (VerificadorTipos.tipo_to_string Ast.TInt);
    Alcotest.(check string) "tipo bool" "bool" (VerificadorTipos.tipo_to_string Ast.TBool);
    Alcotest.(check string) "tipo unit" "unit" (VerificadorTipos.tipo_to_string Ast.TUnit);
    Alcotest.(check string) "tipo ref" "ref" (VerificadorTipos.tipo_to_string (Ast.TRef Ast.TInt))

(*
Executa os testes do verificador de tipos.
@return unit: Não há retorno.
*)
let () =
    Alcotest.run "VerificadorTipos" [
        ("executar", [Alcotest.test_case "infere o tipo da ast" `Quick test_executar]);
        ("tipo_to_string", [Alcotest.test_case "converte tipos para string" `Quick test_tipo_to_string ])
    ]
