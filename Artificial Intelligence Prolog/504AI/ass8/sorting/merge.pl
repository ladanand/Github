msort1([],[]).
msort1([X],[X]).
msort1(L,Ls):-L=[_,_|_],
		split1(L,L1,L2),
		msort1(L1,S1),msort1(L2,S2),merge(S1,S2,Ls).

split1([],[],[]).

split1([A],[A],[]).

split1([A,B|T],[A|P1],[B|P2]):-split1(T,P1,P2).



merge([],L,L).
merge(L,[],L).
merge([A1|L1],[A2|L2],[A1|L3]):-A2>=A1,
				merge(L1,[A2|L2],L3).

merge([A1|L1],[A2|L2],[A2|L3]):-A1>A2,
				merge([A1|L1],L2,L3).

