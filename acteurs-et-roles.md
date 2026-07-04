# Acteurs et rôles — DoctoRDV

## Objectif

Ce document identifie les acteurs concernés par l’application DoctoRDV et leurs rôles.

L’objectif est de préparer la conception fonctionnelle de l’application avant le développement.

## Acteurs identifiés

| Acteur | Description | Besoin principal |
|---|---|---|
| Visiteur | Personne non connectée qui consulte l’application | Découvrir les praticiens disponibles |
| Patient fictif | Utilisateur qui souhaite prendre un rendez-vous | Réserver ou annuler un rendez-vous |
| Praticien | Professionnel de santé fictif | Consulter son planning |
| Administrateur | Responsable de la gestion de l’application | Gérer les praticiens, créneaux et rendez-vous |

## Rôles prévus dans l’application

| Rôle applicatif | Droits prévus |
|---|---|
| Visiteur | Consulter la page d’accueil et les praticiens |
| Patient | Réserver un rendez-vous, consulter ou annuler ses rendez-vous |
| Praticien | Consulter son planning et ses rendez-vous |
| Administrateur | Gérer les utilisateurs, praticiens, disponibilités et rendez-vous |

## Rôle visiteur

Le visiteur peut accéder à certaines pages sans connexion.

Il peut :

- consulter la page d’accueil ;
- consulter la liste des praticiens ;
- voir certaines informations générales.

Il ne peut pas réserver de rendez-vous sans compte patient fictif.

## Rôle patient fictif

Le patient fictif peut :

- se connecter ;
- consulter les praticiens ;
- voir les disponibilités ;
- réserver un rendez-vous ;
- consulter ses rendez-vous ;
- annuler un rendez-vous si cela est autorisé.

Les données utilisées restent fictives.

## Rôle praticien

Le praticien peut :

- se connecter ;
- consulter son planning ;
- voir les rendez-vous associés à son profil ;
- suivre ses créneaux réservés.

Dans la première version, le praticien ne gère pas forcément lui-même ses disponibilités.

## Rôle administrateur

L’administrateur peut :

- gérer les praticiens ;
- gérer les créneaux ;
- gérer les rendez-vous ;
- consulter les utilisateurs ;
- corriger ou supprimer certaines données.

## Justification

Ces rôles permettent de couvrir les besoins principaux sans rendre le projet trop complexe.

Le projet reste réaliste pour un étudiant BTS SIO SLAM.