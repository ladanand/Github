appendlist([ ],L,L).
appendlist(H,L1,L2) :- L2 is [H|L1].

check([ ],[ ],[ ]).
check([H|T],L1,L2) :- H>0,appendlist(H,L1,Ll), check(T,Ll,L2) ; H<0,appendlist(H,L2,Ls),check(T,L1,Ls).

