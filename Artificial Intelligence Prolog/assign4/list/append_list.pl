append_list([],List2,List2).
append_list([H|L1],List2,[H|L3]) :- 		append_list(L1,List2,L3).