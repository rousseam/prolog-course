% Essai : permet d'échouer si un prédicat n existe pas au lieu de stopper.'
:- set_prolog_flag(unknwon, fail).
:- use_module(library(clpfd)). % si besoin

% guillemets à l'intérieur d'apostrophe (comme dans 'l"espion')
livre(auteur(fredric, dard), titre('l"espion'), prix(45)).
% apostrophes pour inclure des espaces dans un nom/ titre (comma dans 'les misérables')
livre(auteur(victor, hugo), titre('les misérables'), prix(300)).
livre(auteur(eugene, delonay), titre('pendule de foucault'), prix(125)).
livre(auteur(victor, hugo), titre('fantasia chez les ploucs'), prix(200)).
livre(auteur(eugene, chang), titre('le silence'), prix(180)).
livre(auteur(umberto, ecco), titre('le nom de la rose'), prix(185)).
livre(auteur(umberto, ecco), titre('pendule de foucault'), prix(195)).

auteur_prix_fixes(E, P, Livres) :-
    findall((E, Titre), livre(E, Titre, P), Livres).



achats_possibles(Budget, Livres_achetes, Prix_des_livres_achetes, Total_cout) :-
    livre(_,titre(Titre),prix(Prix)),
    Prix #=< Budget,
    Budget_restant #= Budget - Prix,
    achats_possibles(Budget_restant, Autres_livres_achetables, Prix_des_autres_livres_achetables, Cout_des_autres_achats),
    Livres_achetes = [Titre | Autres_livres_achetables],
    Prix_des_livres_achetes = [Prix | Prix_des_autres_livres_achetables], 
    Total_cout #= Cout_des_autres_achats + Prix.

achats_possibles(_Budget ,[],[],0).