dxy(2,1).
dxy(2,-1).
dxy(1,2).
dxy(-1,2).
dxy(-2,1).
dxy(1,-2).
dxy(-2,-1).
dxy(-1,-2).

jump(X1,Y1,X2,Y2) :- dxy(Dx,Dy),X2 is X1+Dx,inboard(X2),
		Y2 is Y1+Dy,inboard(Y2).
inboard(Xy) :- 0 < Xy,Xy < 9.
knightpath([]).
knightpath([X1,Y1,X2,Y2|Rest]) :- jump(X1,Y1,X2,Y2),knightpath([X2,Y2|Rest]).


