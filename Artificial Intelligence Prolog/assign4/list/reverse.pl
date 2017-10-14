rev_list([],[]).
rev_list([H|T],Rlist):-rev_list(T,RT),append(RT,[H],Rlist).
