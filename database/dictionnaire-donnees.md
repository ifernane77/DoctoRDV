# Dictionnaire de données — DoctoRDV

## Objectif

Ce document décrit les données principales prévues dans l’application DoctoRDV.

Il permet de mieux comprendre le rôle de chaque table avant la création de la base de données.

## Table roles

| Champ | Type prévu | Description |
|---|---|---|
| id | INT | Identifiant du rôle |
| nom | VARCHAR | Nom du rôle |

Exemples de rôles :

- administrateur ;
- praticien ;
- patient.

## Table users

| Champ | Type prévu | Description |
|---|---|---|
| id | INT | Identifiant de l’utilisateur |
| role_id | INT | Rôle associé à l’utilisateur |
| nom | VARCHAR | Nom de l’utilisateur |
| prenom | VARCHAR | Prénom de l’utilisateur |
| email | VARCHAR | Adresse email |
| mot_de_passe | VARCHAR | Mot de passe hashé plus tard |
| telephone | VARCHAR | Numéro de téléphone |

## Table specialites

| Champ | Type prévu | Description |
|---|---|---|
| id | INT | Identifiant de la spécialité |
| nom | VARCHAR | Nom de la spécialité |

Exemples :

- Médecin généraliste ;
- Dentiste ;
- Kinésithérapeute ;
- Infirmier.

## Table praticiens

| Champ | Type prévu | Description |
|---|---|---|
| id | INT | Identifiant du praticien |
| user_id | INT | Compte utilisateur associé si nécessaire |
| specialite_id | INT | Spécialité du praticien |
| nom | VARCHAR | Nom du praticien |
| prenom | VARCHAR | Prénom du praticien |
| email | VARCHAR | Email professionnel fictif |
| telephone | VARCHAR | Téléphone professionnel fictif |
| description | TEXT | Présentation du praticien |

## Table disponibilites

| Champ | Type prévu | Description |
|---|---|---|
| id | INT | Identifiant de la disponibilité |
| praticien_id | INT | Praticien concerné |
| date_disponibilite | DATE | Date du créneau disponible |
| heure_debut | TIME | Heure de début |
| heure_fin | TIME | Heure de fin |
| statut | VARCHAR | État de la disponibilité |

Statuts possibles :

- disponible ;
- réservé ;
- annulé.

## Table rendez_vous

| Champ | Type prévu | Description |
|---|---|---|
| id | INT | Identifiant du rendez-vous |
| patient_id | INT | Utilisateur ayant réservé le rendez-vous |
| praticien_id | INT | Praticien concerné |
| disponibilite_id | INT | Disponibilité utilisée |
| statut | VARCHAR | Statut du rendez-vous |
| date_creation | DATETIME | Date de création du rendez-vous |

Statuts possibles :

- confirmé ;
- annulé ;
- terminé.

## Remarque

Ce dictionnaire de données est une première version.

Il sera amélioré lors de la création du script SQL et du développement.