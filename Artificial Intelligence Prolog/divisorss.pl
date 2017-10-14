divisors1(N) :- write('Divisors from 2 to'),write(N),nl,div1(2,N).
div1(N,N) :- about1(N).
div1(A,N) :- about1(A),NN is A+1,div1(NN,N).
about1(N) :- chkdiv1(1,N,List),write('Divisors of'),write(N),write('are:'),
		write(List),nl,prime1(N,List).
chkdiv1(N,N,[N]).
chkdiv1(A,B,[H|T]) :- B>A,
			0 is B mod A,H is A,A1 is A+1,
			chkdiv1(A1,B,T).
chkdiv1(A,B,L) :- B>A,A1 is A+1,chkdiv1(A1,B,L).
prime1(N,L) :- lengtho(L,X),X>2,write('Composite'),nl.
prime1(N,L) :- write('Prime'),nl.
lengtho([],0).
lengtho([H|T],X) :- lengtho(T,XL),X is XL+1.