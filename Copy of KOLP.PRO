/* Parsing of sentence = "kolpona kora joto sohoj bustob toto sohoj noy" */
/* trace */ 

DOMAINS
sentence=s(vp,adj_adjp,adjp)
vp=vp(n,v)
n=n(string)
v=v(string)
adj_adjp=adj_adjp(adj,adj)

adj=adj(string)

adjp = adjp(np,adj);adjp1(adj,adj)
np=np(n,adj)
prep=prep(adj,adj)




PREDICATES
 nondeterm s_sentence(string,sentence)
 nondeterm s_noun_phrase(string,string,np)
 nondeterm s_verb_phrase(string,string,vp)
  nondeterm s_adj_adjective_phrase(string,string,adj_adjp)
   nondeterm s_adjective_phrase(string,string,adjp)
    nondeterm s_adjective1_phrase(string,string,adjp)
    
noun(string)
verb(string)

adjective(string)
adj_adjective(string)


CLAUSES

s_sentence(Str,s(V_phrase,Adj_adj_phrase,Adj_phrase)):-
		   s_verb_phrase(Str,Str1,V_phrase),
		   s_adj_adjective_phrase(Str1,Str3,Adj_adj_phrase),
		   s_adjective_phrase(Str3,Str4,Adj_phrase).
		   
		   
s_noun_phrase(Str,Str2,np(n(N),adj(Adv))):-
			fronttoken(Str,N,Str1),noun(N),
			fronttoken(Str1,Adv,Str2),adj_adjective(Adv).
			
s_verb_phrase(Str,Str2,vp(n(N),v(V))):-
			fronttoken(Str,N,Str1),noun(N),
			fronttoken(Str1,V,Str2),verb(V).
			


s_adj_adjective_phrase(Str,Str2,adj_adjp(adj(Adv),adj(Adj))):-
			fronttoken(Str,Adv,Str1),adj_adjective(Adv),
			fronttoken(Str1,Adj,Str2),adjective(Adj).
			
		
s_adjective_phrase(Str,Str1,adjp(N_phrase,A_phrase)):-
                          s_noun_phrase(Str,Str2,N_phrase),
                          s_adjective1_phrase(Str2,Str3,A_phrase).

s_adjective1_phrase(Str,Str1,adjp1(adj(Adj1),adj(Adj2))):-
			fronttoken(Str,Adj1,Str1),adjective(Adj1),
			fronttoken(Str1,Adj2,Str2),adjective(Adj2).				                          

                          
                          
                          
			


		

noun("bustob").
noun("kolpona").
verb("kora").
adj_adjective("joto").
adj_adjective("toto").
adjective("sohoj").
adjective("noy").

/*determiner("High").
determiner("The").
determiner("the").
noun("user").
noun("printer").
noun("I").
noun("rice").
noun("temperature").
noun("performance").
aux_verb("may").
aux_verb("will").
aux_verb("should").
verb("affect").
verb("eat").
verb("clean").
prep("of").*/
/*
Goal
write("Write a sentence:"),nl,s_sentence("kolpona kora joto sohoj bustob toto sohoj noy",Result).*/