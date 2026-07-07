# DoctoRDV

## Présentation du projet

DoctoRDV est une application web de gestion de rendez-vous médicaux fictifs développée dans le cadre du BTS SIO option SLAM.

L’objectif est de permettre à une maison médicale fictive, **MediCentre Nova**, de mieux organiser les rendez-vous entre les patients et les praticiens.

Ce projet constitue ma réalisation principale pour l’épreuve **E6 SLAM**.

## Contexte

MediCentre Nova gère actuellement ses rendez-vous principalement par téléphone.

Cette organisation peut entraîner plusieurs difficultés :

- erreurs de planning ;
- oublis de rendez-vous ;
- difficulté à suivre les disponibilités des praticiens ;
- perte de temps dans la gestion des appels ;
- manque de visibilité sur les rendez-vous à venir.

## Objectif de l’application

L’application DoctoRDV doit permettre de centraliser la gestion des rendez-vous.

Elle permettra notamment :

- à un visiteur de consulter les praticiens ;
- à un patient fictif de consulter les disponibilités ;
- à un patient fictif de réserver un rendez-vous ;
- à un patient fictif d’annuler un rendez-vous ;
- à un praticien de consulter son planning ;
- à un administrateur de gérer les praticiens, les créneaux et les rendez-vous.

## Utilisateurs prévus

- Visiteur
- Patient fictif
- Praticien
- Administrateur

## Fonctionnalités prévues

- Consultation des praticiens
- Consultation des disponibilités
- Réservation d’un rendez-vous
- Annulation d’un rendez-vous
- Connexion utilisateur
- Gestion des rôles
- Gestion des praticiens
- Gestion des créneaux
- Consultation du planning praticien
- Administration des rendez-vous

## Technologies prévues

- PHP
- MySQL
- HTML / CSS
- JavaScript
- Bootstrap
- Laragon
- Git
- GitHub
- Markdown

## Organisation du dépôt

```text
DoctoRDV/
├── README.md
├── objectifs-projet.md
├── backlog.md
├── acteurs-et-roles.md
├── architecture-et-flux.md
├── cas-utilisation.md
├── diagramme-cas-utilisation.md
├── architecture-application.md
├── journal-de-bord.md
├── src/
├── database/
├── tests/
└── preuves/

## Avancement

| Semaine | Travail réalisé | Statut |
|---|---|---|
| Semaine 1 | Cadrage du projet, objectifs, backlog initial et dépôt GitHub | Terminé |
| Semaine 2 | Identification des acteurs, rôles, flux et architecture générale | Terminé |
| Semaine 3 | Rédaction des cas d’utilisation et préparation de l’architecture applicative | Terminé |
| Semaine 4 | Préparation de l’environnement technique, documentation d’installation, conventions de nommage et préparation de la future base de données | Terminé |
| Semaine 5 | Conception du modèle de données : MCD brouillon, MLD brouillon, dictionnaire de données et règles de gestion | Terminé |
| Semaine 6 | Création des maquettes fonctionnelles : recherche, fiche praticien, calendrier, formulaire de réservation et espace praticien | Terminé |
| Semaine 7 | Préparation de l’architecture applicative prévue : arborescence, dépendances prévues, rôles utilisateurs et préparation du futur développement | Terminé |