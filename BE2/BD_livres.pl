% BD. des livres

livres(auteur('Victor', 'Hugo'), [('Juliette Drouet',  32), ('Notre Dame de Paris', 45), ('Les Misérables', 35),
                                            ('Quatre Vingt Treize', 24), ('Feuilles d automne', 30), ('Les Contemplations', 25)]).
livres(auteur('Léo', 'Ferré'), [('Testament Phonographe', 25), ('La méthode', 25), ('Benoit Misère', 30)]).
livres(auteur('Max', 'Weber'), [('Economie et Société', 24), ('Le savant et le Politique', 29), ('Théorie de la science', 34), ('La bourse', 25)]).
livres(auteur('Blaise', 'Pascal'), [('Pensées', 25), ('De l esprit Géométrique', 45)]).
livres(auteur('Confucius', 'Confucius'), [('Confucius', 35), ('La morale', 30), ('Les entretiens', 25)]).
livres(auteur('Jacques', 'Lacan'), [('D un autre à l autre', 30), ('Mon enseignement', 50)]).
livres(auteur('Sigmund', 'Freud'), [('Sur le rêve', 30), ('Totem et Tabou', 25), ('MétaPsycologie', 40)]).
livres(auteur('Michel', 'Foucault'), [('Surveiller et punir', 34), ('Histoire de la folie', 25), ('L ordre du discours', 35)]).
livres(auteur('Jacques', 'Derrida'), [('Feu la cendre', 30), ('Mémoire d aveugle' , 20), ('Voiles', 25 ) , ('Demeure' , 35), ('Position', 20) ]).
livres(auteur('Michel', 'Serres'), [('Atlas, Philosophie des réseaux', 30), ('Tiers Instruit', 25)]).
livres(auteur('Simone', 'Weil'), [('Pensées', 30), ('Attente de Dieu', 20), ('La Condition Ouvrière', 35) , ('Cahiers', 25)]).
livres(auteur('Simone', 'De Beauvoir'), [('La Force des Choses', 35), ('L Invitée', 22), ('Les Mandarins', 35) , ('Tout Compte Fait', 20)]).
livres(auteur('Honoré', 'de BALZAC'), [('La bourse', 35), ('Adieu', 32),('Episode sous la terreur', 30)]).
livres(auteur('Enki', 'Bilal'), [('Le Monstre - RDV à Paris', 15), ('Quatre', 13), ('Hors jeu', 14)]).

% Pour les tests
/* Écrire les prédicats répondant aux requêtes suivantes :

1- La somme des prix des livres d'un auteur dont on précise le prénom et le nom.
2- Le nombre de livres d'un auteur dont on précise le prénom et le nom.
3- Le maximum des prix des livres d'un auteur dont on précise le prénom et le nom.
4- Les livres d'un auteur dont le prix est inférieur (ou supérieur) à un prix donné.
5- Le titre et l'auteur du livre le moins (le plus) cher de cette librairie.
6- Les titres des livres dont le prix = un certain prix donné en paramètre.
7- La moyenne des prix des livres d'un auteur.
8- L'auteur + le titre le plus cher (prix maximum de tous les livres)
9- idem mais le moins cher.
10- Les auteurs dont le prénoms (ou les noms) sont identiques (compléter la base éventuellement).
11- Les auteurs ayant écrit un titre identique
12- En utilisant les prédicats prédéfinis sort/2 et findall/3 (voir ci-dessous), établir et afficher l'inventaire trié par titre des livres avec
l'auteur en face. Pour récupérer les traces dans un fichier, voir ci-dessous.
*/
 
%-----------------------------------------------------------------------------------------------------------------------

