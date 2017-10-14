sum_list([],L,L).
sum_list([H|T],X,L):-L1 is H+X,sum_list(T,L1,L).