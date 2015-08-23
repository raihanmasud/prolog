domains

predicates
asc(integer)
dsc(integer)
clauses

asc(N):- NN= N+1,N<=10,write(N," "),asc(NN).
dsc(N):- NN = N-1,N>0,write(N," "),dsc(NN).