next(y,g).
next(y,b).
next(y,r).
next(r,y).
next(r,b).
next(r,g).
next(b,y).
next(b,r).
next(b,g).
next(g,b).
next(g,y).
next(g,r).



adjacent(R1,R2,R3,R4,R5,R6):-next(R1,R2),next(R1,R3),next(R1,R6),next(R1,R4),next(R2,R4),next(R2,R3),next(R2,R6),next(R3,R4),next(R4,R5),next(R4,R6),next(R5,R6).





