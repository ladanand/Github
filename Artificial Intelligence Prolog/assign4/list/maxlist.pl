max(X,Y,X):-X>=Y.
max(X,Y,Y):-X<Y.
maxlist([H],H).
maxlist([H|T],Max):- maxlist(T,Max1),max(H,Max1,Max).