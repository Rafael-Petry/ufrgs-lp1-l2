let interpreta_arquivo () =
    let codigo = In_channel.with_open_bin 
        "src/tests/data/1.txt"
        In_channel.input_all in

    let resultado = Interpretador.executar(codigo) in
    Alcotest.(check string) "resultado do interpretador" "int 42" resultado

let () =
    Alcotest.run "Interpretador" [("execucao", [Alcotest.test_case "interpreta data/1.txt" `Quick interpreta_arquivo])]
