quick_sort([],[]).

quick_sort([H|T],Sorted):-
pivoting(H,T,L1,L2),

quick_sort(L1,Sorted),

quick_sort(L2,Sorted2),

append(Sorted,[H|Sorted2],Sorted).

pivoting(H,[],[],[]).

pivoting(H,[X|T],[X|L],G):-
X=<H,
pivoting(H,T,L,G).

pivoting(H,[X|T],L,[X|G]):-
X>H,
pivoting(H,T,L,G).

pivoting(H,[X|T],L,[X|G]):-
X>G,
pivoting(H,T,L,G).
