listlength([],L,L).
listlength([H|T],C,Length):-CC is C+1,listlength(T,CC,Length).