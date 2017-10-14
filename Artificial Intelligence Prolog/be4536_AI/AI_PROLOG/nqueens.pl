solution(N,S):-bet(1,N,Dxy),
                          N1 is 1-N, N2 is N-1,
	        bet(N1,N2,Du),
	        N3 is 2*N,bet(2,N3,Dv),
	        sol(S,Dxy,Dxy,Du,Dv).
sol([],[],Dy,Du,Dv).
sol([Y|Ylist],[X|Dx1],Dy,Du,Dv):-delete1(Dy,Y,Dy1), 
			    U is X-Y,delete1(Du,U,Du1),
			    V is X+Y,delete1(Dv,V,Dv1),
			    sol(Ylist,Dx1,Dy1,Du1,Dv1).
delete1([H|T],H,T).
delete1([H|T],E,[H|T1]):-delete1(T,E,T1).

bet(N,N,[N]).
bet(N1,N2,[N1|List]):-N1<N2, M is N1+1,bet(M,N2,List).