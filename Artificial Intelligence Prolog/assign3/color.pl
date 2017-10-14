next(yellow,red).
next(blue,red).
next(green,red).
next(yellow,blue).
next(red,blue).
next(green,blue).
next(red,yellow).
next(blue,yellow).
next(green,yellow).
next(yellow,green).
next(blue,green).
next(red,green).

adjacent(R1,R2,R3,R4,R5,R6) :- next(R1,R2),next(R1,R3),next(R1,R6),next(R1,R4),next(R2,R4),next(R2,R3),next(R2,R6),next(R3,R4),next(R4,R5),next(R4,R6),next(R5,R6).