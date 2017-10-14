split([],[],[]).


split([X|L],[X|L1],L2) :- split(L,L2,L1).