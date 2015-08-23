/* Parsing of sentence = "The user should clean the printer" */

/* trace */ 

DOMAINS
sentence=s(np,obj,vp)
np=np(n)
n=n(string)
obj=obj(string)
vp=vp(v)
v=v(string)

/*
vp=vp(v,np)
v=v(string)
np=np(det,n)
det=det(string)
n=n(string)
aux=aux(string)
*/
PREDICATES
 nondeterm s_sentence(string,sentence)
 nondeterm s_noun_phrase(string,string,np)
 nondeterm s_verb_phrase(string,vp)

noun(string)
obj(string)
verb(string)





CLAUSES

s_sentence(Str,s(N_phrase,obj(A),V_phrase)):-
		   s_noun_phrase(Str,Str1,N_phrase),
		   fronttoken(Str1,A,Str2),obj(A),	
		   s_verb_phrase(Str2,V_phrase).		

s_noun_phrase(Str,Str2,np(n(N))):-
			fronttoken(Str,N,Str2),noun(N).
			
s_verb_phrase(Str,vp(v(V))):-
			fronttoken(Str,V,Str1),frontstr(3,V,Selected,Rest),concat(Selected,i,V).
s_verb_phrase(Str,vp(v(V))):-
			fronttoken(Str,V,Str1),frontstr(3,V,Selected,Rest),concat(Selected,cchi,V).
			
s_verb_phrase(Str,vp(v(V))):-
			fronttoken(Str,V,Str1),frontstr(3,V,Selected,Rest),concat(Selected,o,V).

s_verb_phrase(Str,vp(v(V))):-
			fronttoken(Str,V,Str1),frontstr(3,V,Selected,Rest),concat(Selected,y,V).
		


noun("ami").
noun("tumi").
noun("se").

obj("schoole").
obj("vat").

verb("kha").
verb("jha").



Goal
write("Write a sentence:"),nl,nl,readln(STR),s_sentence(STR,Result).