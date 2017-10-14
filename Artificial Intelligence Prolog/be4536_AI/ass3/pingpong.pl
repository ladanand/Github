players(paresh,9).
players(prerak,10).
players(chetan,9).
players(suresh,9).

game(X,Y):-players(X,9),players(Y,9),X\=Y.