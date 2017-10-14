parent(pina,rima).
parent(rima,sima).
predecessor(X,Z):-parent(X,Y),parent(Y,Z).
