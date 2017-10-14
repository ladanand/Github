players(paresh,9).
players(prerak,10).
players(chetan,9).
players(suresh,9).
players(rakesh,10).

tournament(P1,P2) :- players(P1,9),players(P2,9),P1\=P2.