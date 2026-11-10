# ufrgs-lp1-l2

Implementação do interpretador da linguagem L2 com construções imperativas para o trabalho final da disciplina de LP1 da UFRGS, conforme o arquivo [especificacao.pdf](https://github.com/Rafael-Petry/ufrgs-lp1-l2/blob/main/especificacao.pdf).

## Estrutura

- **main.ml:** Programa "main" que executa o interpretador com uma entrada de programa padrão.
- **interpretador.ml:** Implementa o interpretador da linguagem L2, que chama todos módulos para executar o programa de entrada.
- **analisadorLexico.ml:** Módulo que implementa o analisador léxico do interpretador.
- **analisadorSintatico.ml:** Módulo que implementa o analisador sintático do interpretador.
- **verificadorTipos.ml:** Módulo que implementa o type infer do interpretador.
- **avaliador.ml:** Módulo que implementa o evaluate big step do interpretador.

## Como Executar

1. Instale o [OCaml](https://ocaml.org/)

2. Instale as ferramentas no switch do opam
    - **Dune** é usado na compilação, servindo como um sistema de build (resolve dependências de arquivos).
    - **Alcotest** é um framework para testes unitários.
    - **OCaml-LSP-Server** é um LSP para habilitar sugestões de autocomplete e diagnósticos de erro no editor.
    - **OCamlFormat** é um formatador para padronizar estilização de programa.

```
opam install dune alcotest ocaml-lsp-server ocamlformat
```

3. Compile o projeto:

```
dune build
```

4. Execute o programa:

```
dune exec src/main.exe
```

5. Execute os testes unitários:

```
dune test
```

Para visualizar o relatório do Alcotest diretamente:

```
dune exec src/tests/<nome_arquivo_teste>.exe
```

## Recomendações

Se estiver usando o VSCode, instale a extensão [OCaml Platform](https://marketplace.visualstudio.com/items?itemName=ocamllabs.ocaml-platform) para ter autocomplete e outras ferramentas úteis.
