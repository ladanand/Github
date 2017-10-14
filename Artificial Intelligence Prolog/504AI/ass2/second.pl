parent(laxmi,nilesh).
parent(suresh,nilesh).
parent(suresh,ganga).
parent(nilesh,nisha).
parent(nilesh,bhargav).
parent(bhargav,aditya).
parent(neela,nisha).
parent(ganesh,girish).
parent(ganga,girish).
parent(suresh,sharda).
parent(nilesh,ramesh).
parent(ramesh,rushi).
husband(ramesh,roma).
husband(naitik,nisha).
husband(ganesh,ganga).
husband(saras,sharda).
husband(nilesh,neela).
husband(suresh,laxmi).


male(nilesh).
male(suresh).
male(bhargav).
male(aditya).
male(ganesh).
male(girish).
male(ramesh).
male(rushi).
male(naitik).
male(saras).
female(laxmi).
female(ganga).
female(nisha).
female(neela).
female(roma).
female(sharda).


father(X,Y):-parent(X,Y),male(X).
mother(X,Y):-parent(X,Y),female(X).
brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X\=Y;mother(Z,X),mother(Z,Y),male(X),X\=Y;father(Z,X),father(Z,Y),male(X),X\=Y.
sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),X\=Y;mother(Z,X),mother(Z,Y),female(X),X\=Y;father(Z,X),father(Z,Y),female(X),X\=Y.
dada(X,Z):-father(X,Y),father(Y,Z).
dadi(X,Z):-mother(X,Y),father(Y,Z).
kaka(X,Z):-brother(X,Y),father(Y,Z).
kaki(X,Z):-brother(W,Y),husband(W,X),father(Y,Z).
nana(X,Y):-father(X,Z),mother(Z,Y).
nani(X,Y):-nana(Y,Z),husband(Y,X).
foi(X,Z):-sister(X,Y),father(Y,Z).

fua(X,Z):-foi(Y,Z),husband(X,Y).
mama(X,Z):-brother(X,Y),mother(Y,Z).
mami(X,Z):-husband(Y,X),mama(Y,Z).
masi(X,Z):-sister(X,Y),mother(Y,Z).
masa(X,Z):-husband(X,Y),masi(Y,Z).

cousin_brother(X,Z):-father(Y,X),kaka(Y,Z),male(X);mother(Y,X),foi(Y,Z),male(X);father(Y,X),mama(Y,Z),male(X);mother(Y,X),masi(Y,Z),male(X).
cousin_sister(X,Z):-father(Y,X),kaka(Y,Z),female(X);mother(Y,X),foi(Y,Z),female(X);father(Y,X),mama(Y,Z),female(X);mother(Y,X),masi(Y,Z),female(X).