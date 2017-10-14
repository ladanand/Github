move(state(middle,onbox,middle,hasnot),
grasp,state(middle,onbox,middle,has)).

move(state(P1,onfloor,P1,H),
climbs,state(P1,onbox,P1,H)).

move(state(P1,onfloor,P1,H),
pushes,state(P2,onfloor,PH,H)).

move(state(P1,onfloor,B,H),walks,
state(P2,onfloor,B,H)).

canget(state(_,_,_,has)).

canget(State1):-move(State1,M,State2),
write(' '),write(M),nl,canget(State2).