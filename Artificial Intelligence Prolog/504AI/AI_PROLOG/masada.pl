remove_first([H|T],T).


len([],0).

len([H|T],C1):-len(T,C2),C1 is C2+1.


masada([X,Y],B,C):-write('Survivor is'),write(X),nl,write('Survivors friend is')
,write(Y),!,fail.

masada(A,B,C):-len(A,L),E is Lmod2,E=0,!,split(A,B,C),!,masada(B,D,F).

masada(A,B,C):-len(A,C),E is Lmod2,E\=0,!,split(A,B,C),remove_first(B,B1),!,masa
da(B1,D,F).


split([],[],[]).

split([A],[A],[]).

split([A,B|T],[A|P1],[B|P2]):-split(T,P1,P2).


solution1(List):-masada(List,A,B).

