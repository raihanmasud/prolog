domains

predicates



final(integer,integer)
per(integer,integer,integer)
div(integer,integer,integer,integer)
dwn(integer,integer,integer)
fact(integer,integer,integer)
up(integer,integer,integer)

go

clauses

go:-    clearwindow,
	write("Enter the value of N:"),
	readint(N),
	S=N-1,
	TN=N,
	up(N,TN,S).	
	
	 
	up(_,_,1).
	up(A,TN,B):-	
			P=A*B,	
			Q=B-1,
			TN=TN,
			up(P,TN,Q),
			fact(P,TN,Q).

	fact(P,TN,Q):-
	Q=1,
	write("\n Enter value of R:"),
	readint(R),
	dwn(R,TN,P).
	
			dwn(R,TN,P):-	
			G=TN-R,
			H=G-1,
			H>=1,
			TR=R,
			div(G,H,P,TR).
			 

			dwn(R,TN,P):-
			G=TN-R,
			H=G-1,
			G=1,
			H=0,
			P=P,
			final(P,R).
			
			
			
	div(_,0,_,_).

	div(G,H,P,TR):-
		F=G*H,
		J=H-1,
		P=P,
		TR=TR,
	div(F,J,P,TR),
	per(F,P,TR).
	
	
per(F,P,TR):-
   F1=P/F,
   final(F1,TR).
   
   		final(F1,TR):-
   		write("PER RES: ",F1).
   		
    	
   	   	