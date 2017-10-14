Diff is DD1+D2.

diffdate(D1,M1,Y1,D2,M2,Y1,Diff):-
Ytemp1 is Y1 mod 4,
Ytemp2 is Y1 mod 100,
Ytemp3 is Y1 mod 400,
(Ytemp1=0, not(Ytemp2=0); Ytemp3=0),
(M1=jan;M1=feb),
countdays(M1,M2,DD), DD is DD-D1,
Diff is DD1+DD2+1.

diffdate(D1,M1,Y1,D2,M2,Y1,Diff):-
Ytemp1 is Y1 mod 4,
Ytemp2 is Y1 mod 100,
Ytemp3 is Y1 mod 400,
(Ytemp1=0, not(Ytemp2=0); Ytemp3=0),
not(M1=jan), not(M1=feb),countdays(M
DD1 is DD-D1,
Diff is DD1+D2.

diffdate(D1,M1,Y1,D2,M2,Y2,Diff):-
days_bet_years(Y1,Y2,DY), nl,
diffdate(D1,M1,Y2,D2,M2,Y2,Diff1),
Diff is DY+Diff1.
