user(urvi,asdfg).
user(rinku,qwert).


logon :- getinput(_,_),write('You are now logged on.').

logon :- repeat,write('Sorry, you are not permitted access.'),nl,write('Please try again.'),nl,getinput(_,_),write('You are now logged on.'),nl.


getinput(Name,Password):-write('Enter Your User Name : '),
			read(Name),
			write('Enter Password : '),
			read(Password),nl,user(Name,Password).