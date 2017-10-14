delete1([H|T],H,T).

delete1([H|T],E,[H|T1]) :- delete1(T,E,T1).