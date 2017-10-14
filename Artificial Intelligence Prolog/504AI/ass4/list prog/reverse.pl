reverse1([],[]).
reverse1([H|T],Rlist):-reverse1(T,RT),append(RT,[H],Rlist).
