% BD. des livres

livres(auteur('Victor', 'Hugo'), [('Juliette Drouet',  32), ('Notre Dame de Paris', 45), ('Les Mis�rables', 35),
                                            ('Quatre Vingt Treize', 24), ('Feuilles d automne', 30), ('Les Contemplations', 25)]).
livres(auteur('L�o', 'Ferr�'), [('Testament Phonographe', 25), ('La m�thode', 25), ('Benoit Mis�re', 30)]).
livres(auteur('Max', 'Weber'), [('Economie et Soci�t�', 24), ('Le savant et le Politique', 29), ('Th�orie de la science', 34), ('La bourse', 25)]).
livres(auteur('Blaise', 'Pascal'), [('Pens�es', 25), ('De l esprit G�om�trique', 45)]).
livres(auteur('Confucius', 'Confucius'), [('Confucius', 35), ('La morale', 30), ('Les entretiens', 25)]).
livres(auteur('Jacques', 'Lacan'), [('D un autre � l autre', 30), ('Mon enseignement', 50)]).
livres(auteur('Sigmund', 'Freud'), [('Sur le r�ve', 30), ('Totem et Tabou', 25), ('M�taPsycologie', 40)]).
livres(auteur('Michel', 'Foucault'), [('Surveiller et punir', 34), ('Histoire de la folie', 25), ('L ordre du discours', 35)]).
livres(auteur('Jacques', 'Derrida'), [('Feu la cendre', 30), ('M�moire d aveugle' , 20), ('Voiles', 25 ) , ('Demeure' , 35), ('Position', 20) ]).
livres(auteur('Michel', 'Serres'), [('Atlas, Philosophie des r�seaux', 30), ('Tiers Instruit', 25)]).
livres(auteur('Simone', 'Weil'), [('Pens�es', 30), ('Attente de Dieu', 20), ('La Condition Ouvri�re', 35) , ('Cahiers', 25)]).
livres(auteur('Simone', 'De Beauvoir'), [('La Force des Choses', 35), ('L Invit�e', 22), ('Les Mandarins', 35) , ('Tout Compte Fait', 20)]).
livres(auteur('Honor�', 'de BALZAC'), [('La bourse', 35), ('Adieu', 32),('Episode sous la terreur', 30)]).
livres(auteur('Enki', 'Bilal'), [('Le Monstre - RDV � Paris', 15), ('Quatre', 13), ('Hors jeu', 14)]).

% Pour les tests
/* �crire les pr�dicats r�pondant aux requ�tes suivantes :

1- La somme des prix des livres d'un auteur dont on pr�cise le pr�nom et le nom.
2- Le nombre de livres d'un auteur dont on pr�cise le pr�nom et le nom.
3- Le maximum des prix des livres d'un auteur dont on pr�cise le pr�nom et le nom.
4- Les livres d'un auteur dont le prix est inf�rieur (ou sup�rieur) � un prix donn�.
5- Le titre et l'auteur du livre le moins (le plus) cher de cette librairie.
6- Les titres des livres dont le prix = un certain prix donn� en param�tre.
7- La moyenne des prix des livres d'un auteur.
8- L'auteur + le titre le plus cher (prix maximum de tous les livres)
9- idem mais le moins cher.
10- Les auteurs dont le pr�noms (ou les noms) sont identiques (compl�ter la base �ventuellement).
11- Les auteurs ayant �crit un titre identique
12- En utilisant les pr�dicats pr�d�finis sort/2 et findall/3 (voir ci-dessous), �tablir et afficher l'inventaire tri� par titre des livres avec
l'auteur en face. Pour r�cup�rer les traces dans un fichier, voir ci-dessous.
*/
 
%-----------------------------------------------------------------------------------------------------------------------

