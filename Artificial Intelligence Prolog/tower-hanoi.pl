hanoi(N) :- move1(N,left,center,right).
move1(0,_,_,_) :- !
move1(N,L,C,R) :- M is N-1, move1(M,L,R,C), inform(L,C), move1(M,R,C,L).
inform(X,Y) :- write('Move disk from'), write(X), write(' pole to '), write(Y), write('pole'),nl.