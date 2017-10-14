is_human(amit).
is_human(jay).
is_human(tina).
is_cat(mini).
is_cat(rani).
is_cat(hani).
poss(amit,mini).
poss(jay,rani).
poss(tina,hani).
not_lazy(mini).
not_lazy(hani).
beautiful(hani).
beautiful(rani).

likes(X,Y) :- is_human(X),is_cat(Y),poss(X,Y),not_lazy(Y),beautiful(Y).