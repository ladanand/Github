member(E,[E|T]).
member(E,[H|T]):-member(E,T).
