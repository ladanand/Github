
perm([],[]).
perm(X,[Y|Z]):-select(Y,X,R),perm(R,Z).

sudoku(Board):-Board=[R1,R2,R3,R4],
	       Board=[[X11,X12,X13,X14],[X21,X22,X23,X24],[X31,X32,X33,X34],[X41,X42,X43,X44]],
D=[1,2,3,4],
%the digits 
X11=1,X22=2,	X33=3,X44=4,
perm(R1,D),
perm(R2,D),
perm(R3,D),
perm(R4,D),
perm([X11,X21,X31,X41],D),
%Columns
perm([X12,X22,X32,X42],D),
perm([X13,X23,X33,X43],D),
perm([X14,X24,X34,X44],D),
perm([X11,X12,X21,X22],D),
%Boxes
perm([X13,X14,X23,X24],D),
perm([X31,X32,X41,X42],D),
perm([X33,X34,X43,X44],D),
print(R1),
print(R2),
print(R3),
print(R4).

