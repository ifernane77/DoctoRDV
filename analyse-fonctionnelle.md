# Analyse fonctionnelle — DoctoRDV

## Objectif

Ce document présente les utilisateurs de l'application, leurs rôles et les principales fonctionnalités prévues.

## Acteurs

### Administrateur

L'administrateur peut :

- gérer les utilisateurs ;
- gérer les médecins ;
- consulter tous les rendez-vous ;
- gérer les rôles.

### Médecin

Le médecin peut :

- consulter ses rendez-vous ;
- consulter les informations des patients ;
- gérer ses disponibilités.

### Secrétaire

La secrétaire peut :

- créer un rendez-vous ;
- modifier un rendez-vous ;
- supprimer un rendez-vous ;
- gérer les patients.

## Principales fonctionnalités

| Fonctionnalité | Administrateur | Médecin | Secrétaire |
|---|---:|---:|---:|
| Se connecter | Oui | Oui | Oui |
| Gérer les utilisateurs | Oui | Non | Non |
| Gérer les médecins | Oui | Non | Non |
| Gérer les patients | Oui | Consultation | Oui |
| Gérer les rendez-vous | Oui | Consultation | Oui |
| Gérer les disponibilités | Oui | Oui | Non |

## Parcours principal

1. L'utilisateur se connecte.
2. Il accède au tableau de bord.
3. Il consulte les rendez-vous.
4. Il crée, modifie ou supprime un rendez-vous selon son rôle.
5. Les informations sont enregistrées dans la base de données.

## Pages prévues

- Connexion
- Tableau de bord
- Gestion des utilisateurs
- Gestion des médecins
- Gestion des patients
- Gestion des rendez-vous
- Gestion des disponibilités

## Règles fonctionnelles

- Un utilisateur doit être connecté.
- Les droits dépendent du rôle.
- Un rendez-vous est associé à un patient et à un médecin.
- Les actions sont limitées selon le profil connecté.

## Limites

Le projet ne prévoit pas :

- d'espace patient ;
- de paiement en ligne ;
- de téléconsultation ;
- de synchronisation avec un agenda externe.