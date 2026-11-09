(*
---------------------------
Arquivo: main.ml
Descrição: Executa o programa de teste padrão do interpretador.
---------------------------
*)

(*
Executa o programa de teste padrão do interpretador.
@return unit: Não há retorno.
*)
let () = 
    let programa = In_channel.with_open_bin 
        "src/tests/data/1.txt"
        In_channel.input_all in

    print_endline (Interpretador.executar(programa));
