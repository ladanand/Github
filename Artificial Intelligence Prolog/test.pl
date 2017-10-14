test :- write('Enter one no : '), read(X),write('Enter another no : '),read(Y),check(X,Y).

check(X,Y) :- X>Y, write('Invalid input'),nl,write('Enter nos again :'),nl,test ;  X=<Y, less(X), Y1 is X+Y, gret(Y,Y1).

less(0).
less(N) :- N1 is N-1, less(N1), nl, write(N1). 

gret(N,N) :- !
gret(N,S) :- N1 is N+1, nl, write(N1), gret(N1,S).