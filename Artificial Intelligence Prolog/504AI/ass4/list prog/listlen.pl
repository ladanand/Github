listlength([],0).

listlength([H|T],Length):-listlength(T,Length1),Length is Length1+1.
