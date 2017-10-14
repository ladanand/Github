pythagoras(X,Y,Z) :- P is X*X, Q is Y*Y, R is Z*Z, S is P+Q, R==S, write('It is a pythagoras triplet').
pythagoras(X,Y,Z) :- write('It is not a pythagoras trplet').