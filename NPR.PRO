/*trace*/
domains

predicates
fact(integer,integer)
/*fc(integer,integer)*/
/*npr(integer,integer)*/
clauses

fact(F,1):-write(F).
fact(F,N):- FN=F*N,NN=N-1,fact(FN,NN).
/*fc(N,T):-F=1,fact(F,N).*/


/* npr(N,R):-fc(N,NP),D=N-R,L=fc(D),write(S).*/