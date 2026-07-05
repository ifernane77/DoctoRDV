# MCD brouillon — DoctoRDV

## Objectif

Ce document présente un premier modèle conceptuel de données pour l’application DoctoRDV.

Il s’agit d’un brouillon destiné à préparer la future base de données MySQL.

## Entités principales

Les entités principales identifiées sont :

- rôle ;
- utilisateur ;
- spécialité ;
- praticien ;
- disponibilité ;
- rendez-vous.

Dans cette première version, un patient est représenté par un utilisateur ayant le rôle `patient`.

## Diagramme brouillon

```mermaid
erDiagram
    ROLES ||--o{ USERS : possede
    SPECIALITES ||--o{ PRATICIENS : classe
    USERS ||--o| PRATICIENS : peut_etre
    PRATICIENS ||--o{ DISPONIBILITES : propose
    USERS ||--o{ RENDEZ_VOUS : reserve
    PRATICIENS ||--o{ RENDEZ_VOUS : concerne
    DISPONIBILITES ||--o| RENDEZ_VOUS : utilise

    ROLES {
        int id
        string nom
    }

    USERS {
        int id
        int role_id
        string nom
        string prenom
        string email
        string mot_de_passe
        string telephone
    }

    SPECIALITES {
        int id
        string nom
    }

    PRATICIENS {
        int id
        int user_id
        int specialite_id
        string nom
        string prenom
        string email
        string telephone
        text description
    }

    DISPONIBILITES {
        int id
        int praticien_id
        date date_disponibilite
        time heure_debut
        time heure_fin
        string statut
    }

    RENDEZ_VOUS {
        int id
        int patient_id
        int praticien_id
        int disponibilite_id
        string statut
        datetime date_creation
    }
```

## Explication simple

Un utilisateur possède un rôle.

Les rôles prévus sont :

- administrateur ;
- praticien ;
- patient.

Un praticien appartient à une spécialité.

Un praticien peut proposer plusieurs disponibilités.

Un patient peut réserver un rendez-vous sur une disponibilité.

Un rendez-vous est lié à :

- un patient ;
- un praticien ;
- une disponibilité.

## Limite du modèle

Ce modèle reste volontairement simple.

Il ne gère pas encore :

- les notifications ;
- les rappels par SMS ;
- les paiements ;
- les dossiers médicaux ;
- les données médicales sensibles.

Ces éléments ne sont pas nécessaires pour une première version BTS SIO SLAM.