hanoi(N):-move(N,left,middle,right).

move(1,A,_,C):-inform(A,C).
move(N,A,B,C):-N1 is N-1,
	move(N1,A,C,B),
	inform(A,C),
	move(N1,B,A,C).
inform(Loc1,Loc2):-nl,
	write('move a disk from'),nl,
	write(Loc1),nl,
	write('to location'),nl,
	write(Loc2).
