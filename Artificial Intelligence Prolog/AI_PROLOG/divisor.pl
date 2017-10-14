between(N1,N2,[N1|List]):-
N1<N2,
M is N1+1,
between(M,N2,List).

divisor(N):-
N>2000,
fail.
divisor(N):- N=<2000,between(2,N,DividendL
between(1,N,List),write('The divisor of'),
write(2),
write('to'),
write(N),
write('are'),nl,
member(N1,DividendList),nl,
write('The divisors of'),
write(N1),
write('are '),
member(X,List),
is_divisor(N1,X),
write(X),
write(' '),
fail.
is_divisor(N,X):-Temp is N mod X, Temp=0.
