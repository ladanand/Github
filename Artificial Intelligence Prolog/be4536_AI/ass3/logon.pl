user(ramesh,force).
user(suresh,xyz).
user(hemant,happy).

logon:-write('please enter your user name'),read(Username),write('please enter password'),
           read(Password),user(Username,Password).
logon:-write('sorry,you are not permitted access'),
          write('please try again'),nl,logon.