msort([],[]).
msort([X],[X]).
msort(L,Ls) :- L = [_,_|_],
	       split1(L,L1,L2), msort(L1,S1), msort(L2,S2), 
	      merge(S1,S2,Ls).

split1([],[],[]).
split1([H],[H],[]).
split1([H1,H2|T],[H1|T1],[H2|T2]) :- split1(T,T1,T2).

merge([],L,L).
merge(L,[],L).
merge([A1|L1],[A2|L2],[A1|L3]) :- A2 >= A1, merge(L1,[A2|L2],L3).
merge([A1|L1],[A2|L2],[A2|L3]) :- A1>A2, merge([A1|L1],L2,L3).