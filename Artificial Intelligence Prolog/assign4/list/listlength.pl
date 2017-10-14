listlength([],0).

listlength([H|T],L):-listlength(T,L1),L is L1+1.
