type tipo =
    | TInt
    | TBool
    | TUnit
    | TRef of tipo
 
type operacaoBinaria = 
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
    | Binop of operacaoBinaria * ast * ast
    | Let of string * tipo * ast * ast 
    | If of ast * ast * ast
    (* construçoes imperativas *)
    | Unit
    | Deref of ast
    | New of ast
    | Asg of string * ast (* x := e *)
    | Seq of ast * ast 
    | Whi of ast * ast 
    | Loc of int
