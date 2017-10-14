user(jags,jagu).
logon:-getinput(_,_),write('you are logged on'),nl.
logon:-repeat,write('sorry,you are not permitted to access'),
         write('please try again'),nl,
         getinput(_,_),write('you are now logged on'),nl.
getinput(Name,Password):-write('Enter Name'),read(Name),nl,write('Enter Password'),read(Password),nl,user(Name,Password).