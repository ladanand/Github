pytha(X,Y,Z):-P is X*X,
              Q is Y*Y,
              R is Z*Z,
              S is P+Q,
              R==S,write('it is a pythagoras triplet').
pytha(X,Y,Z):-write('it is not a pythagoras triplet.').
              
