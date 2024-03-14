% Mars 2021 : BD pour le BE3 de Ar-S8

servir('Les Guinguettes', 'Heinekin').          servir('Les Guinguettes', 'Leffe'). 
servir('Les Guinguettes', 'Export 33').         servir('Les Guinguettes', 'Leffe'). 
servir('Les Guinguettes', 'Pilsner').           servir('Les Guinguettes', 'Kronenbourg').
servir('Les Guinguettes', 'Quintor').

servir('Lucifer Inn', 'Grimbergen').            servir('Lucifer Inn', 'Castagnor'). 
servir('Lucifer Inn', 'Quintor').               servir('Lucifer Inn', 'Carlsberg'). 
servir('Lucifer Inn', 'Kanterbrau').            servir('Lucifer Inn', 'Pils').

servir('Cervisia Caupona', 'Force 4').          % 'Cervisia Caupona' = Taverne de Bière   
servir('Cervisia Caupona', '1664').             servir('Cervisia Caupona', 'Chtis').            
servir('Cervisia Caupona', 'Kronenbourg').      servir('Cervisia Caupona', 'Guinness').

servir('Auberge du Village', 'Fischer').        servir('Auberge du Village', 'Castagnor').
servir('Auberge du Village', 'Desperado').      servir('Auberge du Village', 'Grimbergen').

servir('Opus Satanae', 'Desperado').            servir('Opus Satanae', 'Castagnor').

%-----------------------------------------------------------------------------------

frequenter('Jean', 'Les Guinguettes').          frequenter('Jean', 'Opus Satanae'). 
frequenter('Jean', 'Lucifer Inn').              frequenter('Jean', 'Cervisia Caupona').          
frequenter('Jean', 'Auberge du Village').   
     
frequenter('Marie', 'Lucifer Inn').             frequenter('Marie', 'Cervisia Caupona').

frequenter('Pierre', 'Auberge du Village').     frequenter('Pierre', 'Opus Satanae').

frequenter('Sara', 'Auberge du Village').       frequenter('Sara', 'Lucifer Inn').
frequenter('Sara', 'Cervisia Caupona'). 

%-----------------------------------------------------------------------------------

aimer('Jean', 'Heinekin').                      aimer('Jean', 'Grimbergen'). 
aimer('Jean', 'Castagnor').                     aimer('Jean', 'Desperado'). 

aimer('Marie', 'Force 4').          aimer('Marie', 'Fischer').          aimer('Marie', 'Quintor').

aimer('Pierre', 'Quintor').         aimer('Pierre', '1664').            aimer('Pierre', 'Pilsner').

aimer('Sara', 'Kronenbourg').       aimer('Sara', 'Leffe').             aimer('Sara', 'Guinness').

%------------------------------------------------------------

% Pour éviter la quantification existentielle dans setof
% je passe par findall, puis transforme en set (en évitant l'échec)
mon_setof(Terme, Buts, Set) :-
    findall(Terme, Buts,  Liste),
    setof(Terme, Terme ^ member(Terme, Liste), Set),
    !.
    % si Liste=[] dans findall, member échoue et mon_setof également. On ajoute donc le "!" et :
mon_setof(_Terme, _Buts, []).

%------------------------------------------------------------

q3(Bar) :-
    aimer('Pierre', Biere), servir(Bar, Biere).

q3_set(LBars) :-
    mon_setof(Bar, q3(Bar), LBars).


q4(Buveur) :-
    frequenter('Pierre', Bar), frequenter(Buveur, Bar).

q4_set(LBuveurs) :-
    mon_setof(Buveur, q4(Buveur), LBuveurs).


q5(Buveur) :-
    aimer(Buveur, _), forall(frequenter(_, Bar), frequenter(Buveur, Bar)). % forall : le premier argument est le générateur (pour tous les bars), le 2eme est la condition -> Buveur fréquente Bar

q5_set(LBuveurs) :-
    mon_setof(Buveur, q5(Buveur), LBuveurs).


q6(Buveur) :-
    aimer(Buveur, _), 
    mon_setof(Biere, aimer(Buveur, Biere), Lbieres),
    mon_setof(Bar, (member(Biere1, Lbieres), servir(Bar, Biere1)), Lbars),
    dif(Lbars, []),
    forall(member(Bar, Lbars), frequenter(Buveur, Bar)).

q6_set(LBuveurs) :-
    mon_setof(Buveur, q6(Buveur), LBuveurs).


q7(Buveur) :-
    aimer(Buveur, _), 
    mon_setof(Biere, aimer(Buveur, Biere), Lbieres),
    mon_setof(Bar, (member(Biere1, Lbieres), servir(Bar, Biere1)), Lbars),
    dif(Lbars, []). % ?

