domains
  namelist=symbol*
  
predicates
 last_element(namelist,symbol)
 
clauses
 last_element([Head],X):-
    X=Head.
 last_element([_|Tail],X):-
   last_element(Tail,X).
 

Goal
   last_element([a,b,c,d],X).