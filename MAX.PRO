
domains

predicates
getinput(integer,integer,integer)
do

clauses

getinput(Num1,Num2,Num3):-Num1>Num2,Num1>Num3,write(Num1).
getinput(Num1,Num2,Num3):-Num1<Num2,Num2>Num3,write(Num2).
getinput(Num1,Num2,Num3):-write(Num3).

do:- readint(Num1),readint(Num2),readint(Num3), getinput(Num1,Num2,Num3).                        

