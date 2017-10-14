permute([],[]).
permute([X|L],P):-permute(L,L1),insert(X,L1,P).
insert(X,List,Boglist):-del(X,Boglist,List).
del(X,[X|T],T).
del(X,[H|T],[H|T1]):-del(X,T,T1).





