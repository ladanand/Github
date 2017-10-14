append5([],List2,List2).
append5([H|L1],List2,[H|L3]):-
      append5(L1,List2,L3).