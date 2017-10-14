user(ramesh,force).
user(suresh,xyz).
user(hemant,happy).

logon :- write('Please enter your user name : '),read(Username),write('Password : '),read(Password),user(Username,Password).
logon :- write('Sorry!! You are not permitted access.'),nl,
write('Please try again'),nl,logon.