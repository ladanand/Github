insertsort([],[]).
insertsort([X|Tail],Sorted) :- insertsort(Tail,SortedTail),
				insert(X,SortedTail,Sorted).
insert(X,[Y|Sorted],[Y|Sorted1]) :- X > Y,!,
				insert(X,Sorted,Sorted1).
insert(X,Sorted,[X|Sorted]).

