# Documentation de la configuration et de la base de données

<aside>
💡

Ce projet gère les fichiers nécessaires pour exécuter tous les microservices, y compris la base de données et la configuration initiale (fichiers .env, schémas de base de données, configurations, etc.). Il agit comme un point central qui unifie ces composants.

</aside>

# Étape 1 :

- Cloner le projet depuis GitHub avec le lien suivant :

```
git clone https://github.com/brayrpgs/GLOB-DB.git
```

# Étape 2 :

- Une fois cloné, ouvrez le dossier

> GLOB-DB  
>
- et copiez ces 3 fichiers de configuration :

> .vscode  
.env  
compose.yml  
>

![image.png](image.png)

Copiez ces 3 fichiers dans le répertoire parent (dossier précédent).  
Le résultat doit ressembler à l’image suivante.

![image.png](image%201.png)

Ensuite, ouvrez un terminal ou CMD dans ce dossier et exécutez la commande suivante pour ouvrir VS Code :

```
code .
```

# Étape 3 :

Exécutez la tâche appelée `Docker`.

<aside>
💡

Pour exécuter des tâches dans VS Code, utilisez le raccourci `Shift + Ctrl + B` (Windows/Linux) ou `Shift + Cmd + B` (Mac).

</aside>

Une fois terminé, vous verrez un message dans le terminal (il peut varier).

![image.png](image%202.png)

# Étape 4 :

Accédez à l’URL suivante dans votre navigateur : `localhost:8080` ou `127.1.1.1:8080`.

Vous verrez l’écran de connexion suivant :

![image.png](image%203.png)

Connectez-vous avec les identifiants définis dans le fichier `.env` :

```
PGADMIN_DEFAULT_EMAIL=xxxxxxxxxxxxx
PGADMIN_DEFAULT_PASSWORD=xxxxxxxxxxx
```

# Étape 5 :

Enregistrez une connexion à un serveur PostgreSQL.

![image.png](image%204.png)

Remplissez le formulaire de connexion. Attribuez un **Nom** à cette connexion (au choix).

![image.png](image%205.png)

Allez dans l’onglet 'Connection' et complétez les champs :

> Host name: `GLOB-DB`  
Port: `5432`  
Username: `POSTGRES_USER` (défini dans `.env`)  
Password: `POSTGRES_PASSWORD` (défini dans `.env`)  
Save password: `cocher`  
>

![image.png](image%206.png)

Cliquez sur Enregistrer !

# Étape 6 :

Si tout s’est bien passé, chargez les schémas.

Une base de données nommée `GLOB_DB` (définie dans `.env`) doit être visible.

![image.png](image%207.png)

Utilisez l’option Restaurer...

![image.png](image%208.png)

Cliquez sur l’icône de dossier.

Cliquez sur les trois points pour ouvrir les options avancées.

![image.png](image%209.png)

Cliquez ensuite sur `Upload`.

![image.png](image%2010.png)  
![image.png](image%2011.png)

Téléversez le fichier `DATABASE.SQL` situé dans :  
 `GLOB-DB\database`

![image.png](image%2012.png)  
![image.png](image%2013.png)

Sélectionnez-le et cliquez sur 'Select'.

![image.png](image%2014.png)

Enfin, cliquez sur 'Restore' pour compléter le processus.

![image.png](image%2015.png)

<aside>
💡

Pour vérifier que tout est bien installé, assurez-vous que les tables apparaissent (comme dans l’exemple). Dans les versions ultérieures, davantage de tables peuvent apparaître.

</aside>

![image.png](image%2016.png)
