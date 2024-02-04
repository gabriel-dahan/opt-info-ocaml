(** Exercices *)

(* -- 1 *)

let valeur_absolue x =
  if x > 0 then x else -x
;;

(* -- 2 *)

  (* 2.1 *)

let rec pgcd a b = 
  if b = 0 then a 
  else pgcd b (a mod b) 
;;

  (* 2.2 *)

let rec bezout a b =
  if b = 0 then (a, 1, 0)
  else
    let r = a mod b in
    let x, u, v = bezout b r in
    (x, v, u - (v * (a / b)))
;;

(* -- 3 *)

  (* 3.1 *)

let rec suite_recurrente f n a = 
  if n = 0 then a
  else f (suite_recurrente f (n - 1) a)
;;

  (* 3.2 : suite_recurrente : ('a -> 'a) -> int -> a' -> a'  
     la suite ne renvoie pas nécessairement un entier ou un flottant, 
     tout dépend du type de a et de la fonction qui lui est appliquée.*)

(* -- 4 *)

  (* 4.1 : 'a * 'b -> 'a * 'a *)

  (* 4.2 : ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c *)

  (* 4.3 : ('a -> int) -> ('a -> int) -> 'a -> int (car présence de l'opérateur '+') *)

(* -- 5 *)

  (* 5.1 : voir 4.2 *)

  (* 5.2 : ('a -> ('b -> 'c)) -> 'a -> 'b -> 'c *)
      (* Est-ce équivalent à ('a -> 'b -> 'c) -> 'a -> 'b -> 'c ? *)
  
  (* 5.3 : Associativité de gauche à droite donc voir 5.2 *)

  (* 5.4 : ('a -> 'b) -> ('c -> ('a -> 'b) -> 'a) -> 'c -> 'b *)

  