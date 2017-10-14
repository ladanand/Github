count(3).
count(N):-write(' '),write(N),NN is N+1,count(NN),write('you will never get here'),write(N),nl.