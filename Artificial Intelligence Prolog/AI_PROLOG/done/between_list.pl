between(N1,N1,N1).
between(N1,N2,N):-N1<N2,NN1 is N1+1,between(NN1,N2,T).

between_list(N1,N1,[N1]).
between_list(N1,N2,[N1|T]):-N1<N2,NN1 is N1+1,between_list(NN1,N2,T).