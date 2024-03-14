entree(salade, 100).
entree(oeufs, 200).
entree(pate, 300).
entree(melon).

plat(poisson, 400).
plat(poulet, 500).
plat(viande, 800).

dessert(glace, 300).
dessert(fruit, 250).
dessert(gateau, 400).
dessert(fromage, 320).

menu(X) :-
    entree(X, _);
    plat(X, _);
    dessert(X, _).

repas(Entree, Plat, Dessert, Valeur) :-
    entree(Entree, X),
    plat(Plat, Y),
    dessert(Dessert, Z),
    Valeur is X + Y + Z.

entreeEtDessert(X) :-
    entree(X, Y),
    dessert(X, Y).

repasLeger(Entree, Plat, Dessert, Valeur) :-
    repas(Entree, Plat, Dessert, Valeur),
    Valeur >= 800,
    Valeur =< 1000.
