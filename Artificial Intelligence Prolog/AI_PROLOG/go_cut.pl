location('ahmedabad','gujarat').
location('mumbai','maharashtra').
location('surat','gujarat').

go:-location(C,S),write(' '),write(C),write(' '),write(S),nl,fail.
go.