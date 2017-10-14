append_list([],List2,List2).
append_list([H1,L1],List2,[H1,L3]):-append_list(L1,List2,L3).