
domains
predicates

fact(integer,integer)
go
clauses

	go:- clearwindow,
	write("Enter the value of N:"),
	readint(N),
	
	M=N-1,
	fact(N,M).

		fact(P,1):-write(P).
		fact(A,B):-
		P=A*B,
		Q=B-1,
		fact(P,Q).


	   		