# CSI 2532 - Livrable 2

Une base de donnée pour les compétition et des classements d'athlètes.
<h2>Diagramme Entité-Relation</h2>

![ER_livrable2](diagrams/ER_livrable2.PNG)

<h2>Diagramme relationnel</h2>

![RM_livrable2](diagrams/RM_livrable2.PNG)



<h2>Schema SQL</h2>

Nous utilisons l'outil de requête de PGadmin 4 v4 pour créer la base de données à partir du schema SQL retrouvé dans le fichier schema.sql.

Il est aussi possible d'obtenir ce schema en effectuant les migrations du dossier "migrations" en ordre croissant de leur ID. Le processus avec PGadmin est le suivant:

1. Ouvrir Query Tool.\
2. Écrire la commande de la migration dans l'onglet "Query Editor".\
3. Exécuter la commande\
4. Recommencer pour les autres migrations.
 


<h2>Seed SQL</h2>

Le fichier seed.sql contient une série de valeurs à insérer dans la base de donnée.\
Elle peut être exécutée de la même manière que les migrations.

<h2>Exemple de requêtes SQL</h2>

<h3>INSERT</h3>

```
INSERT INTO athletes(ID, name, dateOfBirth, gender)
VALUES 
	(1, 'Jojo Lethug', '2000-10-02', 'male'),
	(2, 'Dio Levillain', '2000-01-02', 'male'),
	(3, 'Micheline Michelin', '1976-12-12', 'female'),
	(4, 'Jean-Michel Crapaud', '1992-04-02', 'crapaud'),
	(5, 'Jackie Chan', '1980-10-03', 'man');
```

<h3>DELETE</h3>

```
DELETE from athletes 
where ID = 3;
```

<h3>UPDATE</h3>

```
UPDATE athletes
  SET gender = 'male'
  WHERE name = 'Jean-Michel Crapaud';
```

<h3>SELECT</h3>

```
SELECT name, gender
FROM athletes
WHERE gender <> 'male'
ORDER BY gender DESC, name ASC;
```