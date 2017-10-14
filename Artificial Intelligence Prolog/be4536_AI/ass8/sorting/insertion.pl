insertsort1([],[]).
insertsort1([X|Tail],Sorted):-insertsort1(Tail,insert1(X,Sortedtail,Sorted),Sortedtail).

insert1(X,[Y|Sorted],[Y|Sorted1]):-X>Y,!,insert1(X,Sorted,[X|Sorted]).