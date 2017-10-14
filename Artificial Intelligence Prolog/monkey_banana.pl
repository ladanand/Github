move(State,M,State2).
move(State,(middle,on_box,middle,hasnot),grasp,state(middle,on_box,middle,has)).
move(state(P1,on_floor,B,H),walk(P1,P2),state(P2,on_floor,B,H)).
move(State(P1,on_floor,P1,H),Push(P1,P2),State(P2,on_floor,P2,H)).
move(State(P,on_floor,P,H),climb,State(P,on_box,P,H)),
canget(State(_,_,_,has)).
canget(S1):-move(S1,M,S2),canget(S2).
