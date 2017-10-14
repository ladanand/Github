between2(N1,N1,N1).
between2(N1,N2,N):-N1<N2,NN1 is N1+1,between2(NN1,N2,T).

between_list2(N1,N1,[N1]).
between_list2(N1,N2,[N1|T]):-N1<N2,NN1 is N1+1,between_list2(NN1,N2,T).