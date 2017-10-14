delete1([E|T],E,[T]).
delete1([H|T],E,[H|T1]):-delete1(T,E,T1).
