user(jags,jagu).
logon:-getinput(Name,Password),user(Name,Password),write('successful.'),nl.
logon:-write('unsuccesful'),logon.
getinput(Name,Password):-write('Enter Name'),read(Name),nl,write('Enter Password'),read(Password),nl.