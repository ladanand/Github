month(january,0).
month(february,1).
month(march,2).
month(april,3).
month(may,4).
month(june,5).
month(july,6).
month(august,7).
month(september,8).
month(october,9).
month(november,10).
month(december,11).

days(0,31,Y).
days(1,28,Y) :- X is Y mod 4,
                X\=0.
days(1,29,Y) :- X is Y mod 4,
                X=0.
days(2,31,Y).
days(3,30,Y).
days(4,31,Y).
days(5,30,Y).
days(6,31,Y).
days(7,31,Y).
days(8,30,Y).
days(9,31,Y).
days(10,30,Y).
days(11,31,Y).

check_month(0,1).
check_month(M,0) :- M\=0.
add_days(M,Y,0,0).
add_days(M,Y,D,T) :- MM is (M+1) mod 12,DD is D-1,check_month(M,C),YY is Y+C,add_days(MM,YY,DD,P),days(M,Q,YY),T is P+Q.

interval(D1,M1,Y1,D2,M2,Y2,R) :- month(M1,MM1),month(M2,MM2),MM is MM2-MM1,D is MM+(12*(Y2-Y1)),add_days(MM1,Y1,D,T),
                                  R is T+D2-D1.
