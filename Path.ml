(* Path module body *)
(* LAP (AMD 2022) *)

(* 
Student 1: 60045 mandatory to fill
Student 2: 60182 mandatory to fill

Comment:

?????????????????????????
?????????????????????????
?????????????????????????
?????????????????????????
?????????????????????????
?????????????????????????

*)

(*
0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
	100 columns
*)


(* COMPILATION
		ocamlc -c Path.mli Path.ml
*)



(* AUXILIARY GENERAL FUNCTIONS - you can add more *)

let rec clean l =
	match l with
	| [] -> []
	| [x] -> [x]
	| x::y::xs ->
		if x = y then clean (y::xs)
		else x::clean (y::xs)

let unique l = (* removes duplicates *)
	clean (List.sort compare l)

let length =
	List.length

let map =
	List.map

let filter =
	List.filter

let mem =
	List.mem

let flatMap f l =
	List.flatten (map f l)

let partition =
	List.partition

let exists =
	List.exists

let for_all =
	List.for_all

let union l1 l2 =
	clean (l1 @ l2)

let inter l1 l2 =
	filter (fun x -> mem x l2) l1

let diff l1 l2 =
	filter (fun a -> not (mem a l2)) l1



(* TYPES & CONSTANTS *)

type point = int * int
type path = point list

let _NO_PATH = []


(* SOME EXAMPLES - you can add more *)

let example1 = [
		(0,0); (0,1); (0,2);
		(1,2); (2,2); (2,1);
		(2,0); (1,0)
]

let example2 = [
		(0,0); (0,1); (0,2);
		(1,2); (2,2); (2,1);
		(2,0); (1,0); (0,0)
]

let example3 = [
		(2,2); (2,3); (2,4); (2,5);
		(3,5); (4,5); (5,5); (6,5);
		(5,4); (4,3); (3,2); (2,1);
		(1,0); (1,1); (1,2); (2,3);
		(3,4); (4,5); (5,6); (6,7)
]

let example4 = [
		(1,1); (2,1); (3,1); (4,1);
		(1,2); (2,2); (3,2); (4,2);
		(1,3); (2,3); (3,3); (4,3);
		(1,4); (2,4); (3,4); (4,4)
]

let example5 = [
		(0,4); (1,4); (2,4); (3,4); (4,4); (5,4); (6,4);
		(4,0); (4,1); (4,2); (4,3); (4,4); (4,5); (4,6);
		(0,0); (1,1); (2,2); (3,3); (4,4); (5,5); (6,6);
		(0,8); (1,8); (2,8); (2,9); (2,10); (1,10); (0,10); (0,9); (0,8)
]

let example6 = [
		(0,0); (0,1); (0,2); (0,3); (0,3); (0,4); (0,5); (0,7); (0,8)
]

let example7 = [
		(1,1); (2,1);
		(3,1); (3,2);
		(4,2); (4,3); (3,3);
		(3,2); (2,2);
		(2,1);(2,0);(2,-1)
]

let example8 = [
				(0, 1); (1, 1); (2, 1); (3, 1); (4, 1);(5, 1); 
				(4, 0);(4, 1); (4, 2); (4, 3); (4, 4); (4, 5); 
				(0, 4); (1, 4); (2, 4); (3, 4); (4, 4); (5, 4); 			
]

let example9 = 
 [[(0, 1); (1, 1); (2, 1); (3, 1); (4, 1)]; [(4, 1); (4, 0); (5, 1); (4, 1)];
 [(4, 1); (4, 2); (4, 3); (4, 4)]; [(4, 4); (4, 5)];
 [(0, 4); (1, 4); (2, 4); (3, 4); (4, 4)]; [(4, 4); (5, 4)]]


let example10 = 
 [[(0, 1); (1, 1); (2, 1); (3, 1); (4, 1)]; [(4, 1); (4, 0); (5, 1); (4, 4)];
 [(4, 1); (4, 2); (4, 3);(3,3); (4, 4)];[(4, 4);(4, 10); (4, 2)]]

let example11 = [
	[(4, 4); (4, 5); (4, 6); (5, 4); (6, 4)]; [(6, 4); (4, 5); (4, 6);(4,7)];
        [(0, 4); (1, 4); (2, 4); (3, 4); (4, 5); (5, 4); (4, 4)]
]

let example12 = [ [(0, 4); (1, 4); (2, 4); (3, 4); (4, 4)]; [(4, 4); (5, 4); (6, 4)];
 			[(4, 0); (4, 1); (4, 2); (4, 3); (4, 4)]; [(4, 4); (4, 5); (4, 6)];
 			[(0, 0); (1, 1); (2, 2); (3, 3); (4, 4)]; [(6, 4); (5, 5); (6, 6)];
 			[(0, 8); (1, 8); (2, 8); (2, 9); (2, 10); (1, 10); (0, 10); (0, 9); (0, 8)]
]
 				
let example13 = [[(3,0);(3,3)];[(0,0);(3,3)]; [(0,0);(3,0)]]


let example14 = [
    (1,1); (2,2); (3,3); (2,4); (1,5); (2,6); (3,7);
    (3,1); (4,2); (3,3); (4,4); (3,5); (2,6);
    (4,2); (5,3); (6,4); (5,5);
    (5,1); (4,2);
    (0,4); (1,5)
]


let example1A = [
		(0,0); (0,1); (0,2);
		(1,2); (2,2); (2,1);
		(2,0); (1,0)
]

let example2A = [
		(0,0); (0,1); (0,2);
		(1,2); (2,2); (2,1);
		(2,0); (1,0); (0,0)
]

let example3A = [
		(2,3); (2,4); (2,5);
		(3,5); (4,5); (5,5); (6,5);
		(5,4); (4,3); (3,2); (2,1);
		(1,0); (1,1); (1,2); (2,3);
		(3,4); (4,5); (5,6); (6,7)
]

let example4A = [
		(1,1); (2,1); (3,1); (4,1);
		(1,2); (2,2); (3,2); (4,2);
		(1,3); (2,3); (3,3); (4,3);
		(1,4); (2,4); (3,4); (4,4)
]

let example5A = [
		(0,4); (1,4); (2,4); (3,4); (4,4); (5,4); (6,4);
		(4,0); (4,1); (4,2); (4,3); (4,4); (4,5); (4,6);
		(0,0); (1,1); (2,2); (3,3); (4,4); (5,5); (6,6);
		(0,8); (1,8); (2,8); (2,9); (2,10); (1,10); (0,10); (0,9); (0,8)
]

let example6A = [
		(0,0); (0,1); (0,2); (0,3); (0,3); (0,4); (0,5); (0,7); (0,8)
]

let example7A = [
		(0,2); (0,1); (0,0); (0,-1); (0,-2);
		(0,0); (1,0); (2,0); (3,0); (4,0)
]

let example8A = [
		(0,0); (0,1); (0,2); (0,3); (0,4); (0,5); (0,6); (0,7); (0,8); (0,9);
		(3,0); (3,1); (3,2); (3,3); (3,4); (3,5); (3,6); (3,7); (3,8); (3,9);
		(6,0); (6,1); (6,2); (6,3); (6,4); (6,5); (6,6); (6,7); (6,8); (6,9);
		(9,0); (9,1); (9,2); (9,3); (9,4); (9,5); (9,6); (9,7); (9,8); (9,9);

		(0,9); (1,8); (2,7); (3,6); (4,5); (5,4); (6,3); (7,2); (8,1); (9,0);
		(9,9); (8,8); (7,7); (6,6); (5,5); (4,4); (3,3); (2,2); (1,1); (0,0)
]

let example9A = [
		(0,0); (1,1); (2,2); (3,2); (4,1); (5,0);
		(0,0); (1,0); (2,0); (3,0); (4,0); (4,-1); (5,0)
]

(* BASIC PATH FUNCTIONS - you can add more *)

(* Adjacent points? *)
let areAdjacent (x1, y1) (x2, y2) =
	abs(x2 - x1) <= 1 && abs(y2 - y1) <= 1

(* Are two points the same? *)
let areSame a b =
	a = b

(* Adjacent distinct points? *)
let areAdjacentDistinct a b =
	areAdjacent a b && not (areSame a b)
	
(* Return last element of list l *)
let getLast l = List.nth l (length l - 1);;


(* FUNCTION makeSegment *)
(* pre: none *)
(* post: isSegment result *)
let rec makeSegment a b =
	match a, b with
	| (xa, ya), (xb, yb) -> 
		if xa = xb && ya = yb then [a]
		else if xa = xb then 
			if ya < yb then a::makeSegment (xa, ya + 1) b 
			else a::makeSegment (xa, ya - 1) b
		else if xa < xb then a::makeSegment (xa + 1 , ya ) b
		else a::makeSegment (xa - 1 , ya ) b


(* FUNCTION isContinuous *)
(* pre: p is a path *)
(* post: none *)
let rec isContinuous p =
	match p with
	| [] -> true
	| [_] -> true
	| x::y::tl -> areAdjacent x y && isContinuous (y::tl);;


(* FUNCTION intersections *)
(* pre: p is a path *)
(* post: no repetitions in the result *)
let rec intersections p =
	match p with
	| [] -> _NO_PATH
	| hd::tl -> unique ( (if mem hd tl then [hd] else []) @ intersections tl);; 

(* find first occurrence pf z in p *)
let rec find z p =
	match p with
	| [] -> []
	| [x] -> if z = x then [x] else [] 
	| x::y::tl -> if x = z then [x] else (if areAdjacent x y then x::find z (y::tl) else []);;
	
(*removes all closed segments from list inters*)	
let rec closedIntersections p = 
	match p with
	| [] -> []
	| hd::tl -> let subP = find hd tl in
				if subP <> [] && hd = getLast subP && intersections subP = [] then
				hd::closedIntersections tl
				else closedIntersections tl
	;;
	
(*if the path is a close segment
it will remove the close intersection
of list of intersections*)
let removeClosedIntersections inters p = 
		if length p <= 1 then inters 
		else
			if List.hd p = getLast p && diff inters [getLast p] = [] then
				 diff inters [getLast p] 
			else inters;;
			
(* FUNCTION isSegment *)
(* pre: p is a path *)
(* post: none *)	
let isSegment p = 
	if p = [] then false
	else
		let allInters = intersections p in 
		let ncIntersections = removeClosedIntersections allInters p in
		ncIntersections = [] && isContinuous p;;	  

(*verify if x is an 
intersection in path p*)
let isIntersection x p = let inters = intersections p in 
						mem x inters  ;;
(*verify if x is a close
intersection in path p*)
let isClosedIntersection x p = 	let closedIntersections = closedIntersections p in
						mem x closedIntersections;;	
(*add the x to the head of
 the first list of list l*)	
let rec addToFirst l x = 
	match l with
	| [] -> [[x]]
	| hd::tl -> (x::hd)::tl;;
	 	

(*return a list of list with
all segments of p *)
let rec segs p po = 			
 match p with
	| [] -> []
	| hd::tl -> let seg = segs tl po in 
				if seg = [] then [[hd]] else
					let lastSeg = List.hd seg in
					let firstElemOfLastSeg = List.hd lastSeg in
					if areAdjacent hd firstElemOfLastSeg then 
							if isIntersection firstElemOfLastSeg po  then
								if hd = firstElemOfLastSeg then
										[hd]::seg
								else if length lastSeg <= 1 then 
									addToFirst seg hd 
								else if isClosedIntersection firstElemOfLastSeg po then 
									if length lastSeg <= 1 then 
										addToFirst seg hd 
									else if hd = firstElemOfLastSeg then
										seg
									else 
										[hd; firstElemOfLastSeg]::seg
								else
									if hd = firstElemOfLastSeg then
											seg
									else [hd; firstElemOfLastSeg]::seg
							else  addToFirst seg hd 
					else [hd]::seg;;
								
(*FUNCTION segments*)
(* pre: p is a path *)
(* post: List.for_all isSegment result && respect order of p *)
let rec segments p =  clean (segs p p);;
				 
(*returns a possible path in segment that
starts in a and if b exists ends in b*)
let rec subPath p a b findA findB = 
	match p with
	| [] -> _NO_PATH
	| hd::tl -> 
		if hd = a && hd = b then [a] 
		else if hd = a then a::subPath tl a b true findB
		else if findA && hd = b then [b]
		else if not findA then subPath tl a b findA findB 
		else hd::subPath tl a b findA findB ;;
			
			
(*verify if one interval is valid*)			
let isValidInterval itv a b = mem a itv && mem b itv;;


					
(*FUNCTION interval*)
(* pre: isSegment p *)
(* post: isSegment result *)					
let rec interval p a b = 
	let intv = subPath p a b false false in
	if isValidInterval intv a b then intv else [];;



(* return a list with all 
segments that contains the
'a' point and removes all 
points before the 'a' point*)
let segsWithPt pt pp = let segsContainPt = filter (fun x -> mem pt x)pp in
						map(fun x -> interval x pt (getLast x))segsContainPt
					;;

(* FUNCTION best0 *)
(* pre: List.for_all isSegment pp *)
(* post: isSegment result *)
let rec best0 pp a b =
	match pp with
	| [] -> _NO_PATH
	| hd::tl -> 
		let bestTl = best0 tl a b in
		let hdLength = length ( interval hd a b ) in 
		let tlLength = length bestTl in
			if hdLength <> 0 && (hdLength < tlLength || tlLength = 0) then interval hd a b 
			else bestTl;;

(*return all valid combinations
 with segment s and all segments in pp*) 
let rec allCombsWithSeg s pp = 
	match pp with
	| [] -> [[s]]
	| hd::tl -> if inter hd s = hd || hd = [] 
				then allCombsWithSeg s tl 
				else if getLast s = List.hd hd then
				[s;hd]::allCombsWithSeg s tl
				else allCombsWithSeg s tl;;
				
(*recives a list of list of list and merge the most inside lists 
and clean repetitions*)
let cleanCombs combs = map (fun x ->  clean (List.flatten x))combs;;

(*returns all possible paths merging two segments*)
let rec allPathsCombs pp ppo = 
	match pp with 
	| [] -> _NO_PATH
	| hd::tl -> 
		let combs =  cleanCombs(allCombsWithSeg hd ppo)in
		unique ((if combs = [] then [hd] else combs)@allPathsCombs tl ppo);;
		

(* FUNCTION best1 *)
(* pre: List.for_all isSegment pp *)
(* post: isSegment result *)				
let best1 pp _ a b = let startSegs = segsWithPt a pp in  
					 best0 (allPathsCombs startSegs pp) a b;;

(* return alll possible  paths merging n paths *)
let rec allPossibleCombs pp ppo =
	     let nCombs = allPathsCombs pp ppo in 
	     if nCombs = pp then pp 
	     else allPossibleCombs nCombs ppo;;
        			 	
(* FUNCTION best *)
(* pre: List.for_all isSegment pp *)
(* post: isSegment result *)
let best pp _ a b = let startSegs = segsWithPt a pp in
			        best0 (allPossibleCombs startSegs pp) a b;;



