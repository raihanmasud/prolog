              
domains
       integerlist = integer*
predicates
       append(integerlist,integerlist,integerlist)
       compare(integer,integerlist)
       writelist(integerlist,integerlist)

clauses
       append([],List,List).
       append([X|L1], List2, [X|L3]) if
                 append(L1,List2,L3).
       
       compare(Top,[H|_]):-
                 Top>H.    
       
       
       writelist([],_).
       writelist([Head|Tail],L):-
                 compare(Head,Tail), append([Head],Tail,L), write(Head), writelist(Tail,_).
