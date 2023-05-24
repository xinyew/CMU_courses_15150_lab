fun fst (x : int, y : int) : int = x

fun snd (x : int, y : int) : int = y

fun diag (x : int) : int * int = (x,x)

(* incr : int -> int
 * REQUIRES: true
 * ENSURES: incr x ==> the next integer after x
 *)
fun incr (x : int) : int = x + 1

val () = Test.int("incr_1_test", 2, incr 1)
val () = Test.int("incr_4_test", 5, incr 4)
val () = Test.int("incr_neg4_test", ~3, incr ~4)

(* add3 : int * int * int -> int
 * REQUIRES: true
 * ENSURES: add3 (x,y,z) ==> x+y+z
 *)
fun add3 (t : int * int * int) : int =
  let
    val (x,y,z) = t
  in
    x+y+z
  end

(* Tests for add3 *)
val () = Test.int("add3_0_0_0_test", 0, add3 (0,0,0))
val () = Test.int("add3_1_0_0_test", 1, add3 (1,0,0))
val () = Test.int("add3_0_2_0_test", 2, add3 (0,2,0))
val () = Test.int("add3_0_0_3_test", 3, add3 (0,0,3))


(* flip : int * string -> string * int
 * REQUIRES: true
 * ENSURES: flip(x,s) ==> (s,x)
 *)
fun flip (t : int * string) : string * int =
  let
    val (x,s) = t
  in
    (s,x)
  end

(* Tests for flip *)
val () = Test.string_int("flip_6_hi_test", ("hi",6), flip (6,"hi"))


(* diff : int * int -> int
 * REQUIRES: x < y
 * ENSURES: diff (x,y) ==> y - x
 *)
fun diff (x : int, y : int) : int = y - x

(* Tests for diff *)
val () = Test.int("diff_3_5_test", 2, diff (3,5))
val () = Test.int("diff_4_7_test", 3, diff (4,7))


(* isZero : int -> bool
 * REQUIRES: true
 * ENSURES: isZero(x) ==> true if x is 0, and false otherwise
 *)
fun isZero (x : int) : bool = x = 0

(* Tests for isZero *)
val () = Test.bool("isZero_5_test", false, isZero 5)
val () = Test.bool("isZero_0_test", true, isZero 0)


(* Alternative way to write isZero (which is the same): *)
fun isZero 0 = true
  | isZero (x : int) : bool = false


(* detectZeros : int * int -> bool
 * REQUIRES: true
 * ENSURES: detectZeros(x,y) ==> true if either x or y is zero.
 *          detectZeros(x,y) ==> false otherwise
 *)
fun detectZeros (x : int, y : int) : bool = x = 0 orelse y = 0

(* Tests for detectZeros *)
val () = Test.bool("detectZeros_0_3_test", true, detectZeros (0,3))
val () = Test.bool("detectZeros_3_0_test", true, detectZeros (3,0))
val () = Test.bool("detectZeros_3_3_test", false, detectZeros (3,3))
