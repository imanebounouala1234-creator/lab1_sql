<img width="904" height="493" alt="Capture d&#39;écran 2026-10-31 233520" src="https://github.com/user-attachments/assets/75236faf-0d64-4b2b-adb8-d86a56d3d29e" />
<img width="917" height="485" alt="Capture d&#39;écran 2026-10-31 234748" src="https://github.com/user-attachments/assets/beb700a8-f4db-4a4e-9111-2762ec83b296" />
<img width="959" height="539" alt="Capture d&#39;écran 2026-10-31 234851" src="https://github.com/user-attachments/assets/d5f63171-c328-4d9e-b7bd-b5c345e072bf" />
<img width="955" height="539" alt="Capture d&#39;écran 2026-10-31 235555" src="https://github.com/user-attachments/assets/080be99a-a3f0-4278-9b11-e9f121f490b9" />
<img width="520" height="314" alt="Capture d&#39;écran 2026-10-31 235928" src="https://github.com/user-attachments/assets/8896bfcf-e654-4109-b91b-9547551fb19d" />
<img width="797" height="419" alt="Capture d&#39;écran 2026-10-31 235940" src="https://github.com/user-attachments/assets/d889bfc8-6d3e-436c-8eea-553d8be4d959" />
<img width="959" height="515" alt="Capture d&#39;écran 2026-10-31 235948" src="https://github.com/user-attachments/assets/dc3b68f6-3650-4c41-b03f-8164dbf4ee95" />
<img width="946" height="522" alt="Capture d&#39;écran 2026-11-01 000620" src="https://github.com/user-attachments/assets/54244baa-8fa9-4244-a48d-cfdef501b43a" />
<img width="930" height="494" alt="Capture d&#39;écran 2026-11-01 001620" src="https://github.com/user-attachments/assets/831b995b-696f-4138-b8cf-035981327616" />
## 1. Création et sélection de la base de données
- **`CREATE DATABASE IF NOT EXISTS tp_mysql_db;`** : Crée la base de données nommée `tp_mysql_db` si elle n'existe pas déjà.
- **`USE tp_mysql_db;`** : Sélectionne la base de données pour exécuter les requêtes suivantes à l'intérieur.

---

## 2. Création de la table `utilisateur`
- **`id`** : Clé primaire (`PRIMARY KEY`) à incrémentation automatique (`AUTO_INCREMENT`).
- **`nom`** : Champ texte pour le nom de l'utilisateur (50 caractères max, obligatoire `NOT NULL`).
- **`email`** : Adresse e-mail unique (`UNIQUE`) et obligatoire (`NOT NULL`).
- **`date_creation`** : Horodatage automatique réglé sur la date et l'heure actuelles (`DEFAULT CURRENT_TIMESTAMP`).

---

## 3. Insertion des données de test
- Insertion de deux enregistrements d'essai (`Imane` et `Ahmed`) dans la table `utilisateur`.

---

## 4. Optimisation de la base de données
- **`CREATE INDEX idx_email ON utilisateur(email);`** : Création d'un index sur la colonne `email` pour accélérer la recherche et améliorer les performances des requêtes SQL.

---

## 5. Gestion des utilisateurs et privilèges
- **`CREATE USER ...`** : Création de l'utilisateur `admin_user` sur `localhost` avec le mot de passe `password123`.
- **`GRANT ALL PRIVILEGES ...`** : Attribution de tous les privilèges sur la base de données `tp_mysql_db` à `admin_user`.
- **`FLUSH PRIVILEGES;`** : Rechargement des privilèges pour appliquer les modifications immédiatement.

---

## 6. Affichage des résultats
- **`SELECT * FROM utilisateur;`** : Récupération et affichage de toutes les données insérées dans la table `utilisateur`.
-
