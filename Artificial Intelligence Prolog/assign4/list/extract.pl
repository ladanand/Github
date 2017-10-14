extract([H|T],1,H).

extract([_|T],P,H) :- NP is P-1, extract(T,NP,H).