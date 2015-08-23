domains

predicates
fibo(integer,integer,integer)
fib(integer)

clauses


fibo(Num1,Num2,MAX):- Num3=Num1+Num2,Num3<MAX,write(Num3," "),fibo(Num2,Num3,MAX).

fib(MAX):-Num1=0,Num2=1,write(1," "),fibo(Num1,Num2,MAX).
	