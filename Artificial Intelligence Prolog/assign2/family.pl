parent(laxmi,nilesh).
parent(suresh,nilesh).
parent(suresh,ganga).
parent(laxmi,ganga).
parent(nilesh,nisha).
parent(nilesh,bhargav).
parent(bhargav,aditya).
parent(neela,nisha).
parent(neela,bhargav).
parent(neela,ramesh).
parent(nilesh,ramesh).
parent(nisha,nita).
parent(neela,tina).
parent(nilesh,tina).
married(suresh,laxmi).
married(nilesh,neela).
married(ramesh,rita).
married(raj,tina).

 
female(laxmi).
female(ganga).
female(nisha).
female(neela).
female(nita).
female(tina).
female(rita).
male(raj).
male(nilesh).
male(suresh).
male(bhargav).
male(aditya).
male(ramesh).


father(X,Y):-parent(X,Y),male(X).
mother(X,Y):-parent(X,Y),female(X).
brother(X,Y):-mother(Z,X),mother(Z,Y),male(X),X\=Y; father(Z,X),father(Z,Y),male(X),X\=Y.
sister(X,Y):-mother(Z,X),mother(Z,Y),female(X),X\=Y; father(Z,X),father(Z,Y),female(X),X\=Y.

dada(X,Z):-father(X,Y),father(Y,Z). 
dadi(X,Z):-mother(X,Y),father(Y,Z).

kaka(X,Z):-father(Y,Z),brother(X,Y).
kaki(X,Z):-kaka(Y,Z),married(Y,X).

foi(X,Z):-father(Y,Z),sister(X,Y).
fua(X,Z):-foi(Y,Z),married(X,Y).

mama(X,Z):-mother(Y,Z),brother(X,Y).
mami(X,Z):-mama(Y,Z),married(Y,X).

masi(X,Z):-mother(Y,Z),sister(X,Y).
masa(X,Z):-masi(Y,Z),married(X,Y).

cousin_brother(X,Z):-kaka(Y,Z),father(Y,X),male(X);foi(Y,Z),mother(Y,X),male(X);mama(Y,Z),father(Y,X),male(X);masi(Y,Z),mother(Y,X),male(X).
cousin_sister(X,Z):-kaka(Y,Z),father(Y,X),female(X);foi(Y,Z),mother(Y,X),female(X);mama(Y,Z),father(Y,X),female(X);masi(Y,Z),mother(Y,X),female(X).

