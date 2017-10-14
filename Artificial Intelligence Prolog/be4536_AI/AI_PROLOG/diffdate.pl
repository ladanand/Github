not(P):-call(P),!,fail,not(P).
month(jan,31).
month(feb,28).
month(mar,31).
month(apr,30).
month(may,31).
month(jun,30).
month(jul,31).
month(aug,31).
month(sep,30).
month(oct,31).
month(nov,30).
month(dec,31).

next(jan,feb).
next(feb,mar).
next(mar,apr).
next(apr,may).
next(may,jun).
next(jun,jul).
next(jul,aug).
next(aug,sep).
next(sep,oct).
next(oct,nov).
next(nov,dec).
next(dec,jan).

days_in_year(Y,366):-Ytemp1 is Y mod 4,
Ytemp2 is Y mod 100,
Ytemp3 is Y mod 400,
(Xtemp1=0, not(Ytemp2=0); Ytemp3=0).
days_in_year(Y,365).
days_bet_years(Y1,Y1,0).
days_bet_years(Y1,Y2,DY):-not(Y1=Y2),
days_in_year(Y1,D1),
Ytemp is Y1+1,
days_bet_years(Ytemp,Y2,DY1,DY is D1+DY).
countdays(M1,M2,0).
countdays(M1,M2,DD):-not(M1=M2),
month(M1,Days),next(M1,Mtemp),
countdays(Mtemp,M2,DD2),
DD is Days+DD2.

diffdate(D1,M1,Y1,D1,M1,Y1,0).
diffdate(D1,M1,Y1,D2,M1,Y1,Diff):-Diff is D1-D2,Diff<0,Diff is -Diff.

diffdate(D1,M1,Y1,D2,M2,Y1,Diff):-
Ytemp1 is Y1 mod 4, not(Ytemp=0),
countdays(M1,M2,DD),
DD1 is DD-D1,
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
not(M1=jan), not(M1=feb),countdays(M1,M2,DD),
DD1 is DD-D1,
Diff is DD1+D2.

diffdate(D1,M1,Y1,D2,M2,Y2,Diff):-
days_bet_years(Y1,Y2,DY), nl,  
diffdate(D1,M1,Y2,D2,M2,Y2,Diff1),
Diff is DY+Diff1.

