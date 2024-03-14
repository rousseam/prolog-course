epouse(sylvie, jean).
epouse(marie, paul).
epouse(helene, jacques).
epouse(bernadette, jose).
epouse(valentine, loic).
epouse(brigitte, pedro).
epouse(elisabeth, yannick).

enfant(jacques, jean).
enfant(jacques, sylvie).
enfant(pierre, jean).
enfant(pierre, sylvie).
enfant(marie, jean).
enfant(marie, sylvie).

enfant(eric, pierre).
enfant(thomas, pierre).

enfant(vincent, jacques).
enfant(vincent, helene).
enfant(loic, jacques).
enfant(loic, helene).
enfant(michele, jacques).
enfant(michele, helene).

enfant(valentine, jose).
enfant(valentine, bernadette).
enfant(olivier, jose).
enfant(olivier, bernadette).

enfant(mark, marie).
enfant(mark, paul).
enfant(laure, marie).
enfant(laure, paul).

enfant(sophie, sylvie).
enfant(sophie, jean).
enfant(alex, sylvie).
enfant(alex, jean).

enfant(david, thomas).
enfant(christine, thomas).

enfant(serge, laure).
enfant(juliette, laure).

enfant(yves, brigitte).
enfant(yves, pedro).

enfant(pedro, yannick).

enfant(elisabeth, brigitte).

enfant(luc, elisabeth).
enfant(luc, yannick).

% Q1
epoux(Mari, Femme) :-
    epouse(Femme, Mari).

% Q3
homme(jean).
homme(jose).
homme(jacques).
homme(pierre).
homme(paul).
homme(alex).
homme(olivier).
homme(vincent).
homme(eric).
homme(loic).
homme(thomas).
homme(mark).
homme(david).
homme(serge).
homme(pedro).
homme(yves).
homme(yannick).

% Q4
femme(X) :-
    nonvar(X),
    not(homme(X)).

% Q5
pere(Dad, Enf) :-
    (enfant(Enf, Dad), homme(Dad));
    (enfant(Enf, Mom), epouse(Mom, Dad));
    (epoux(Enf, Epouse), pere(Dad, Epouse)).

mere(Mom, Enf) :-
    (enfant(Enf, Mom), femme(Mom));
    (enfant(Enf, Mom), epoux(_, Mom));
    (enfant(Enf, Dad), epoux(Dad, Mom)).

parent(Par, Enf) :-
    pere(Par, Enf);
    mere(Par, Enf).

fils(Enf, Par) :-
    parent(Par, Enf),
    homme(Enf).

fille(Enf, Par) :-
    parent(Par, Enf),
    femme(Enf).

frere(Enf1, Enf2) :-
    parent(Par, Enf1),
    parent(Par, Enf2),
    Enf1 \= Enf2,
    homme(Enf1).

soeur(Enf1, Enf2) :-
    parent(Par, Enf1),
    parent(Par, Enf2),
    Enf1 \= Enf2,
    femme(Enf1).

% Q7












