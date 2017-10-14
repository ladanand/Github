delete([E|T],E,T).
delete([H|T],E,X):-delete(T,E,X).