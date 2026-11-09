(*
---------------------------
Arquivo: main.ml
Descrição: Implementa o interpretador da linguagem L2, que chama todos módulos para executar o programa.
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
