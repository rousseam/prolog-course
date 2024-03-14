homme(jean).
homme(pierre).
homme(jacques).


% pere(papa, enfant).

pere(jean, pierre).
pere(jean, jacques).


% Ecrire une règle qui trouve les frères

freres(X, Y) :-
    pere(P, X),
    pere(P, Y),
    X \= Y.


% Tout homme est mortel :

mortel(X) :-
    homme(X).

%----------------------------

/*Axiome
 de
 Péano
*/

% Prédicat entier/1.

entier(0).
entier(succ(X)) :-
    entier(X).

%----------------------------














