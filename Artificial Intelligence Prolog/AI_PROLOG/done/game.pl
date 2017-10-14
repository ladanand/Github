players(a,9).
players(b,9).
players(c,10).
players(d,11).
game_possible(X,Y).
game_possible(X,Y):-players(X,9),players(Y,9),X\=Y.
