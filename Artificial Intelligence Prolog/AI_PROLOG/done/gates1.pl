
or2(0,0,0).
or2(0,1,1).
or2(1,0,1).
or2(1,1,1).

and2(1,1,1).
and2(1,0,0).
and2(0,1,0).
and2(0,0,0).

not2(1,0).
not2(0,1).

xor2(A,B,Z):-
not2(A,P),
not2(B,Q),
and2(B,P,K),
and2(A,Q,F),
or2(K,F,Z).
