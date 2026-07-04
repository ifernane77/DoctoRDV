
---

## `database/schema-prevu.md`

```md
# Schéma prévu de la base de données — DoctoRDV

## Objectif

Ce document prépare les futures tables de la base de données DoctoRDV.

Il ne remplace pas le MCD, mais il permet d’anticiper les principales données à gérer.

## Tables prévues

| Table | Rôle prévu |
|---|---|
| roles | Stocker les rôles des utilisateurs |
| users | Stocker les comptes utilisateurs |
| patients | Stocker les informations des patients fictifs |
| praticiens | Stocker les informations des praticiens |
| specialites | Stocker les spécialités médicales fictives |
| creneaux | Stocker les créneaux disponibles |
| rendez_vous | Stocker les rendez-vous réservés |

## Table roles

Données possibles :

- id ;
- nom du rôle.

Exemples de rôles :

- administrateur ;
- praticien ;
- patient.

## Table users

Données possibles :

- id ;
- nom ;
- prénom ;
- email ;
- mot de passe ;
- rôle ;
- date de création.

## Table patients

Données possibles :

- id ;
- utilisateur associé ;
- téléphone ;
- date de naissance fictive.

## Table praticiens

Données possibles :

- id ;
- nom ;
- prénom ;
- spécialité ;
- email ;
- téléphone ;
- description.

## Table specialites

Données possibles :

- id ;
- nom de la spécialité.

Exemples :

- Médecin généraliste ;
- Dentiste ;
- Kinésithérapeute ;
- Infirmier.

## Table creneaux

Données possibles :

- id ;
- praticien concerné ;
- date ;
- heure de début ;
- heure de fin ;
- statut du créneau.

Statuts possibles :

- disponible ;
- réservé ;
- annulé.

## Table rendez_vous

Données possibles :

- id ;
- patient concerné ;
- praticien concerné ;
- créneau concerné ;
- statut du rendez-vous ;
- date de création.

Statuts possibles :

- confirmé ;
- annulé ;
- terminé.

## Remarque

Ce schéma reste prévisionnel.

Il sera amélioré lors de la création du MCD et du script SQL.