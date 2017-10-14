append([],L2,L2).
append([X|TL1],L2,[X|L3]):-
append(TL1,L2,TL3).
massada([X|Y]):-write('Survivor is'),
write(X),nl,
write('Survivors friend is'),
write(Y),!,fail.
massada([X,Y|Z]):-append(Z,[X],Z1),
massada(Z1).