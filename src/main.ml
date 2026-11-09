let () = 
    let codigo = In_channel.with_open_bin 
        "src/tests/data/1.txt"
        In_channel.input_all in

    print_endline (Interpretador.executar(codigo));
