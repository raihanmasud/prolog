trace
domains
predicates

fact(integer,integer,integer)
check(integer,integer,integer)
check11(integer,integer,integer)
div(integer,integer,integer)
per(integer,integer,integer)

go


clauses

	go:- clearwindow,
	write("Enter the value of N:"),
	readint(N),
	
	M=N-1,
	R=N,
	check(N,R,M).

		check(_,_,1).
		check(A,R,B):-
		P=A*B,
		Q=B-1,
		R1=R,
		check(P,R1,Q),
		fact(P,R1,Q).

	fact(P,R1,Q):-
	Q=1,
	write("\nEnter R:"),
	readint(R),
	check11(R1,R,P).
	

	check11(R1,R,P):-
		G=R1-R,
		H=G-1,
		H>=1,
		div(G,H,P).
		
	check11(R1,R,P):-
		G=R1-R,
		H=G-1,
		G=1,
		H=0,
		per(G,H,P).
	
	


div(_,0,_).

	div(K,L,P1):-
	F=K*L,
	
	J=L-1,
	P2=P1,
	div(F,J,P2),
	per(F,J,P2).
	
	
per(F,J,P2):-
   J=0,
   F1=P2/F,
   write("Result:",F1).
   
   		