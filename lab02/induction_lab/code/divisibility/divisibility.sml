(* evenP : int -> bool *)
(* REQUIRES: n >= 0 *)
(* ENSURES: evenP n evaluates to true if n mod 2 = 0 *)
(*          evenP n evaluates to false if n mod 2 = 1 *)
fun evenP (0 : int) : bool = true
  | evenP 1 = false
  | evenP n = evenP (n - 2)

(* Tests for evenP *)


(* oddP : int -> bool *)
(* REQUIRES: n >= 0 *)
(* ENSURES: oddP n ==>* true if is odd and false otherwise *)
fun oddP (* write your code here *)
  _ = raise Fail "unimplemented" (* DELETE THIS LINE *)

(* Tests for oddP *)



(* Pattern of recursion for divisibleByThree:                 *)


(* divisibleByThree : int -> bool *)
(* REQUIRES: n >= 0 *)
(* ENSURES: divisibleByThree ==>* true if n is a multiple of 3 and false otherwise *)
fun divisibleByThree (* write your code here *)
  _ = raise Fail "unimplemented" (* DELETE THIS LINE *)

(* Tests for divisibleByThree *)

