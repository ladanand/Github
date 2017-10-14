means(0,zero).
means(1,one).
means(2,two).
means(3,three).

translate([],[]).
translate([N|T],[W|T1]):-means(N,W),translate(T,T1).
