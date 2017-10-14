listlength([],L,L).

listlength([H|T],X,L) :- L1 is X+1,listlength(T,L1,L).