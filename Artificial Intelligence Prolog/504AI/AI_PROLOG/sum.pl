sum_of([],0).
sum_of([H|T],S):-sum_of(T,S1),S is S1+1.
