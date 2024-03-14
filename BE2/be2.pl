:- use_module(library(clpfd)).

est_liste([]).
est_liste([_Tete|Reste]) :- est_liste(Reste).

somme([], 0).
somme([Tete|Reste], Total) :- 
    somme(Reste, Total1),
    Total is Total1 + Tete.

somme_qui_ne_marche_pas([], 0).
somme_qui_ne_marche_pas([Tete|Reste], Tete+Total) :-
    somme_qui_ne_marche_pas(Reste, Total).

somme1([], 0).
somme1([Tete|Reste], Total) :-
    somme1(Reste, Total_bis),
    Total #= Total_bis + Tete.

ordonnee([]).
ordonnee([_Seul]).
ordonnee([Premier, Second | Reste]) :-
    Premier @>= Second,
    ordonnee([Second | Reste]).

ordonne2([]). % la liste vide est ordonnée
ordonne2([_]). % la liste réduite à un singleton est ordonnée
ordonne2([Prem | Reste]) :-
    ordonne2(Reste), % Cas liste avec
    Reste=[Seconde|_], % plus de 2 éléments
    Prem @>= Seconde.
    