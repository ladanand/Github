location('ahm','guj').
location('mumbai','maha').
location('surat','guj').

go:-location(C,S),write(C),write(' '),write(S),fail.
go.