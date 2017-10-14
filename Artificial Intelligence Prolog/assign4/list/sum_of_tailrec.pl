sum_of([],L,L).
sum_of([H|T],X,S) :- S1 is H+X,sum_of(T,S1,S).