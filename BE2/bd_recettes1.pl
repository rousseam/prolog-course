% Base de données pour les recettes.
% Mars 2017

%predicat disponible(ingrédient)
disponible(eau).
disponible(sucre).
disponible(sel).
disponible(vinaigre).
disponible(huile).
disponible(beurre).
disponible(sachet_de_the).
disponible(cafe).
disponible(chocolat).
disponible(lait).
disponible(farine).
disponible(oeufs).
disponible(pate_a_crepes).
disponible(pates_nouilles).
disponible(laitue).
disponible(pommes_dt).
disponible(oignon).
disponible(tomates).
disponible(creme).
disponible(fromage).	% toutes sortes. Pour une fondue, pour une tartiflette, raclette...
disponible(lardons). 	% pour tester pates_a_la_carbonara


%prédicat recette(mets, liste des ingrédients)
recette(expresso, [cafe, eau, sucre ]).
recette(gateau, [lait, farine, oeufs, sucre, beurre ]).
recette(the, [sachet_de_the, eau, sucre ]).
recette(crepes, [pate_a_crepes, sucre, beurre ]).
recette(salade, [laitue, vinaigre, huile,  oignon]).
recette(puree, [lait, pommes_dt, beurre,  sel ]).
recette(frites, [pommes_dt, huile,  sel]).
recette(pates_a_la_carbonara, [pates_nouilles,  oeufs,  lardons, sel, oignon, creme]).
recette(carbona, [pates_nouilles,  oeufs,  lardons,  sel, oignon ]).
recette(pitza, [farine,  oeufs,  lardons,  sel, oignon, tomates]).
recette(tartiflette, [pommes_dt,  lardons,  sel, fromage]).


% Q1
tous_disponible([]).

tous_disponible([Tete | Reste]) :-
    disponible(Tete),
    tous_disponible(Reste).

peut_preparer(Recette) :-
    recette(Recette, Liste_ingredients),
    tous_disponible(Liste_ingredients).

% Q2
a_besoin_de(Recette, Ingredient) :-
    recette(Recette, Liste_ingredients),
    member(Ingredient, Liste_ingredients).

