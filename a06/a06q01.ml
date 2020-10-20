exception IgnoreCase;;

type 'a list = Empty
             | Cons of 'a * 'a list
;;


let init list = Empty
;;

let is_empty list = match list with
    Empty -> true
  | Cons (x, xs) -> false
;;

let rec size list = match list with
    Empty -> 0
  | Cons (x, xs) -> 1 + (size xs)
;;

let head list = match list with
  | Cons (x, xs) -> x
  | Empty -> raise IgnoreCase
;;

let rec tail list = match list with
    Cons (x, Empty) -> x
  | Cons (x, xs) -> tail xs
;;

let insert_head xs x = Cons(x, xs)
;;

let delete_head list = match list with
    Cons(x, xs) -> xs
;;

let rec insert_tail xs x = match xs with
 Cons (xs, Empty) -> Cons(xs, Cons(x, Empty))
  | Cons (y, xs) -> insert_tail xs x
(*| Empty -> Cons(x, Empty)*)
;;

(*Do this one! Left off here*)
let rec delete_tail list = match list with
 Cons (x, Cons(xs, Empty)) -> Cons (x, Empty)
  | Cons (x, xs) -> delete_tail xs
;;


let rec reverse list = match list with
   | Cons (xs, Empty) -> Cons(xs, Empty)
   | Cons(x, xs) -> Cons((reverse xs), x)
;;
