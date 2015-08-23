domains
namelist=symbol*

  
predicates
 append(namelist,namelist, namelist)
 
 
 
clauses
 append([],Listb,Listb).
 append([X|List1],List2,[X|List3]):-
     append(List1,List2,List3).

Goal
   append([a,b,c],[d,e],X).