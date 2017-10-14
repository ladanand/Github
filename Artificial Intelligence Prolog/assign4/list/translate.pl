means(0,zero).
means(1,one).
means(2,two).
means(3,three).
means(4,four).
means(5,five).
means(6,six).
means(7,seven).
means(8,eight).
means(9,nine).

translate([],[]).
translate([N|T],[W|T1]):-means(N,W),translate(T,T1).
