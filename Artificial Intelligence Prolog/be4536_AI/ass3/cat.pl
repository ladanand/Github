is_human(jay).
is_human(amit).
is_human(annu).
is_cat(hani).
is_cat(rani).
is_cat(mini).
pass(jay,hani).
pass(amit,rani).
pass(annu,mini).
not_lazy(mini).
not_lazy(hani).
beautiful(hani).
beautiful(rani).


likes(X,Y):-is_human(X),is_cat(Y),pass(X,Y),not_lazy(Y),beautiful(Y).