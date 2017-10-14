and1(0,0,0).
and1(0,1,0).
and1(1,0,0).
and1(1,1,1).
or1(0,0,0).
or1(0,1,1).
or1(1,0,1).
or1(1,1,1).
not1(0,1).
not1(1,0).

exor1(I1,I2,X) :- not1(I1,N1),not1(I2,N2),and1(I1,N2,N3),and1(I2,N1,N4),or1(N3,N4,X).

nand1(I1,I2,X) :- not1(I1,N1),not1(I2,N2),or1(N1,N2,X).

nor1(I1,I2,X) :- not1(I1,N1),not1(I2,N2),and1(N1,N2,X).

