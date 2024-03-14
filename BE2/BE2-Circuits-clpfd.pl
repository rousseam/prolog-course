% kate: hl Prolog;
% Fev 2014 : voir tout en bas un test de "@:=" et de "=>" déterministe
%		il y a aussi le puzzle "jauges" avec TABBING. Lire le début avant de lancer.

% Mars 2012 : pour BE2 prolog (BProlog)

% des exemples pour le BE 2
%

:- use_module(library(clpfd)).

% Circuit
circuit('C1' ,[E1,E2,E3,E4 ] ,[S1,S2 ]) :-      %'C1' est le nom
  and('A1',[E1,E2 ] ,[S1 ] ),       % il est mis entre ' 'pour être
  and('A2',[E3,E4 ] ,[S3 ] ),        % différencié d'une variable
  or('O',[S1,S3 ],[S4 ] ),
  inv('I',[S4 ],[S2 ]).


and(_,[1 ,1 ],[1 ]).          and(_,[0 ,1 ],[0 ]).
and(_,[1 ,0 ],[0 ]).          and(_,[0 ,0 ],[0 ]).

or(_,[1 ,1 ],[1 ]).           or(_,[1 ,0 ],[1 ]).
or(_,[0 ,1 ],[1 ]).           or(_,[0 ,0 ],[0 ]).

inv(_,[1 ],[0 ]).             inv(_,[0 ],[1 ]).
 
 
% les portes élémentaires avec les contraintes (non utilisés ici) :
and_c(_,[E1,E2], [S]) :-
    [E1,E2] in 0..1,
    S #= E1 #/\ E2.

or_c(_,[E1,E2], [S]) :-
    [E1,E2] in 0..1,
    S #= E1 #\/ E2.
    
inv_c(_, [E], [S]) :-
    E in 0..1,
    S #= #\(E).
    
 
panne_circuit('C1', [E1,E2,E3,E4 ] , [S1,S2 ], [P1,P2,P3,P4]):-
  %'on utilise l'équivalence ($<=>$ )
  #\P1 #<==> (S1 #<==> E1 #/\ E2), % le ET
  #\P2 #<==> (S3 #<==>  E3 #/\E4),
  #\P3 #<==> (S4 #<==>  S1 #\/ S3), % le OU
  #\P4 #<==> (S2 #<==>  #\(S4)).


 /*
circuit('C1',[1 ,1 ,0 ,1 ], [0, 1]). ==> false
circuit('C1',[1 ,1 ,0 ,1 ], [1, 0]). ==> true
circuit(X,[ 1 ,1 ,0 ,1 ],[S1,S2 ]). ==> X ='C1', S1 =1, S2 =0
circuit(X,[1 ,1 ,0 ,1 ],S).  ==> X ='C1', S=[1,0]
circuit(X,[E1 ,E2 ,E3 ,E4 ],[0 ,1 ]).
Plusieurs  réponses :
X = 'C1',
E1 = E3, E3 = 0,
E2 = E4, E4 = 1 ;
X = 'C1',
E1 = E4, E4 = 0,
E2 = E3, E3 = 1 ;


circuit(X,[E1 ,E2 ,E3 ,E4 ],[0 ,1 ]).
Plusieurs réponses :
 

circuit('C1',[E1 ,0 ,E1 ,E4 ] ,[0 ,1 ]). ==>  
E1 = 1,
E4 = 0 ;
E1 = 0,
E4 = 1 ;
E1 = E4, E4 = 0.

circuit('C1',E,[0 ,1 ]).  
==> plusieurs réponses :
?- circuit('C1',E,[0 ,1 ]).
E = [0, 1, 0, 1] ;
E = [0, 1, 1, 0] ;
...
 
panne_circuit('C1', [1,1,1,0 ] , [0,1], [P1,P2,P3,P4]). ==> P1 en panne.
*/
