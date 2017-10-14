last_ele([H],H).
last_ele([_|T],L) :- last_ele(T,L).
