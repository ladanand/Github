next(yellow,green).
next(yellow,red).
next(yellow,blue).
next(red,yellow).
next(red,green).
next(red,blue).
next(green,yellow).
next(green,red).
next(green,blue).
next(blue,yellow).
next(blue,red).
next(blue,green).

adjacent(R1,R2,R3,R4,R5,R6):-next(R1,R2),next(R1,R5),next(R1,R3),next(R1,R4),next(R2,R3),next(R2,R6),next(R3,R4),next(R3,R5),next(R3,R6),next(R5,R6),next(R4,R5).

