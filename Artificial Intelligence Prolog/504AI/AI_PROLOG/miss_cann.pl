not(P):-call(P),!,fail.
not(P).

mandc(state(0,0,right),_,[]).
mandc(Currentstate,Visited,[Move|RestofMoves]):-newstate(Currentstate,Nextstate),
					    not(member(Nextstate,Visited)),
					    make_move(Currentstate,Nextstate,Move),	
					    mandc(Nextstate,[Nextstate|Visited],RestofMoves).

make_move(state(M1,C1,left),state(M2,C2,right),move(M,C,right)):-M is M1-M2, C is C1-C2.
make_move(state(M1,C1,right),state(M2,C2,left),move(M,C,left)):-M is M2-M1, C is C2-C1.

carry(2,0).
carry(1,0).
carry(1,1).
carry(0,1).
carry(0,2).

legal(X,X).
legal(3,X).
legal(0,X).

newstate(state(M1,C1,left),state(M2,C2,right)):-carry(M,C),M=<M1,C=<C1,M2 is M1-M, C2 is C1-C,legal(M2,C2).
newstate(state(M1,C1,left),state(M2,C2,right)):-carry(M,C),M2 is M1+M,C2 is C1+C,M2=<3,C2=<3,legal(M2,C2).



