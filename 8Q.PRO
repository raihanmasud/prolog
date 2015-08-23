
trace
% solution for the 8 queens problem

predicates
nondeterm queens(integer,integer,integer,integer,integer,integer,integer,integer)
nondeterm col(integer)
nondeterm dif(integer,integer,integer,integer,integer,integer,integer,integer)
nondeterm main


 clauses


 queens(C1, C2, C3, C4, C5, C6, C7, C8) :-
  col(C1), col(C2), col(C3), col(C4), col(C5), col(C6), col(C7), col(C8),
  dif(C1, C2, C3, C4, C5, C6, C7, C8),
  A=1+C1,
  B=2+C2,
  C=3+C3,
  D=4+C4,
  E=5+C5,
  F=6+C6,
  G=7+C7,
  H=8+C8,
  dif(A,B,C,D,E,F,G,H),
  I=1-C1,
  J=2-C2,
  K=3-C3,
  L=4-C4,
  M=5-C5,
  N=6-C6,
  O=7-C7,
  P=8-C8,
  dif(I,J,K,L,M,N,O,P).



col(1). col(2). col(3). col(4). col(5). col(6). col(7). col(8).




dif(A, B, C, D, E, F, G, H) :-
  A <> B, A <> C, A <> D, A <> E, A <> F, A <> G, A <> H,
           B <> C, B <> D, B <> E, B <> F, B <> G, B <> H,
                    C <> D, C <> E, C <> F, C <> G, C <> H,
                             D <> E, D <> F, D <> G, D <> H,
                                      E <> F, E <> G, E <> H,
                                               F <> G, F <> H,
                                                        G <> H.



main :-
  queens(C1, C2, C3, C4, C5, C6, C7, C8),
  write(C1), write(' '), write(C2), write(' '),
  write(C3), write(' '), write(C4), write(' '),
  write(C5), write(' '), write(C6), write(' '),
  write(C7), write(' '), write(C8), write('\n'),
  fail.

goal main.