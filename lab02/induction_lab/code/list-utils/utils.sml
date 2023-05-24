(* addToEach :
 * REQUIRES:
 * ENSURES:
 *)
fun addToEach  _ = raise Fail "Unimplemented"

(* Tests for addToEach *)
(* Uncomment to test *)
(* val () = Test.int_list_eq ("add 1", [2,3,4], addToEach (1,[1,2,3])) *)
(* val () = Test.int_list_eq ("empty", [], addToEach (2,[])) *)
(* val () = Test.int_list_eq ("add 0", [3,3], addToEach (0,[3,3])) *)
(* Add more test cases here *)

(* mult :
 * REQUIRES:
 * ENSURES:
 *)
fun mult  _ = raise Fail "Unimplemented"

(* Tests for mult *)
(* Uncomment to test *)
(* val () = Test.int ("empty", 1, mult []) *)
(* val () = Test.int ("zero", 0, mult [1,2,3,4,5,0]) *)
(* val () = Test.int ("1*2*3*1", 6, mult [1,2,3,1]) *)
(* Add more test cases here *)

(* trues :
 * REQUIRES:
 * ENSURES:
 *)
fun trues  _ = raise Fail "Unimplemented"

(* Tests for trues *)
(* Uncomment to test *)
(* val () = Test.bool_list_eq ("base case", [], trues []) *)
(* val () = Test.bool_list_eq ("all false", [], trues [false, false, false]) *)
(* val () = Test.bool_list_eq ("TFT", [true,true], trues [true, false, true]) *)
(* Add more test cases here *)

(* trues' :
 * REQUIRES:
 * ENSURES:
 *)
fun trues'  _ = raise Fail "Unimplemented"

(* Tests for trues' *)
(* Uncomment to test *)
(* val () = Test.general_eq ("base case", [], trues' []) *)
(* val () = Test.general_eq ("all false", [], trues' [(1,false),(6,false)]) *)
(* val () = Test.general_eq ("TFTFT", [1,3,5], trues' [(1,true),(2,false),(3,true),(4,false),(5,true)]) *)
(* Add more test cases here *)

(* take : int * int list -> int list *  int list
 * REQUIRES: 0 <= i <= length L
 * ENSURES:
 *)
fun take (0 : int, L : int list) : int list * int list = ([], L)
  | take (i, L) =
    (case L of
     []  => ([], [])
   | x::R => let val (A, B) = take (i - 1, R) in (x :: A, B)  end)

(* bake : int * int list -> int list *  int list
 * REQUIRES: 0 <= i <= length L
 * ENSURES:
 *)
fun bake (i : int, L : int list): int list * int list =
if i = 0 then ([], L) else
  (case L of
     []  => ([], [])
   | x::R => let val (A, B) = bake (i - 1, L) in (x :: A, B)
  end)
