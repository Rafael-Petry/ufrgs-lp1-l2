(*
---------------------------
Arquivo: ast.ml
Descrição: Arquivo disponibilizado no Moodle que define os datatypes básicos da linguagem L2.
---------------------------
*)

type tp =
    | TInt
    | TBool
    | TUnit
    | TRef of tp
 
type bop = 
    | Or
    | And
    | Eq
    | Lt
    | Gt
    | Sum
    | Sub
    | Mul
    | Div

type ast =
    | Num of int
    | Id of string
    | Bool of bool
    | Not of ast 
    | Binop of bop * ast * ast
    | Let of string * tp * ast * ast 
    | If of ast * ast * ast
    (* construçoes imperativas *)
    | Unit
    | Deref of ast
    | New of ast
    | Asg of string * ast (* x := e *)
    | Seq of ast * ast 
    | Whi of ast * ast 
    | Loc of int
