member1(Name,[Name|T]).
member1(Name,[H|T]):-member1(Name,T).
