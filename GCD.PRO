domains
num1,num2=integer
predicates
gcd(integer,integer)

clauses
gcd(0,X):- write(X).
gcd(Num1,Num2):-
	Mod= Num2 mod Num1, gcd(Mod,Num1).