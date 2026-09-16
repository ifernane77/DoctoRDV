# Schéma prévu de la base de données — DoctoRDV

## Objectif

Ce document fixe le schéma de données visé pour la version 1 de DoctoRDV. Il est aligné avec le choix fonctionnel suivant : un patient est un utilisateur ayant le rôle `patient`. Il n’y a donc pas de table `patients` distincte dans la V1.

Le schéma final sera traduit dans un script SQL, puis vérifié et ajusté avec la base MySQL réellement créée.

## Tables de la version 1

| Table | Rôle |
|---|---|
| `roles` | Définit les rôles : patient, praticien et administrateur. |
| `users` | Stocke les comptes utilisateurs fictifs. |
| `specialites` | Stocke les spécialités des praticiens. |
| `praticiens` | Complète le compte d’un utilisateur praticien. |
| `disponibilites` | Stocke les créneaux proposés par les praticiens. |
| `rendez_vous` | Stocke les réservations et leur statut. |
| `journal_actions` | Conserve la trace des actions importantes liées aux rendez-vous. |

## Principales données

### `roles`

- `id` ;
- `nom`.

Exemples : `patient`, `praticien`, `administrateur`.

### `users`

- `id` ;
- `role_id` ;
- `nom` et `prenom` fictifs ;
- `email` ;
- `mot_de_passe` haché ;
- `telephone` fictif ;
- `date_creation`.

### `specialites`

- `id` ;
- `nom`.

### `praticiens`

- `id` ;
- `user_id` ;
- `specialite_id` ;
- `description`.

Les coordonnées du praticien sont déjà portées par le compte lié dans `users` afin d’éviter les doublons inutiles.

### `disponibilites`

- `id` ;
- `praticien_id` ;
- `date_disponibilite` ;
- `heure_debut` ;
- `heure_fin` ;
- `statut` : `disponible`, `reserve` ou `annule`.

### `rendez_vous`

- `id` ;
- `patient_id` ;
- `praticien_id` ;
- `disponibilite_id` ;
- `statut` : `confirme`, `annule` ou `termine` ;
- `date_creation` ;
- `date_modification`.

### `journal_actions`

- `id` ;
- `user_id` de l’auteur de l’action ;
- `rendez_vous_id` concerné, si applicable ;
- `action` : création, modification ou annulation ;
- `date_action`.

## Relations principales

- un rôle peut être attribué à plusieurs utilisateurs ;
- un utilisateur praticien est lié à une fiche praticien ;
- une spécialité peut concerner plusieurs praticiens ;
- un praticien propose plusieurs disponibilités ;
- un patient peut avoir plusieurs rendez-vous ;
- un créneau ne peut être associé qu’à un seul rendez-vous ;
- un rendez-vous peut produire plusieurs entrées dans le journal d’actions.

## Contraintes à implémenter dans le script SQL

- l’adresse e-mail d’un utilisateur est unique ;
- les clés étrangères assurent la cohérence des relations ;
- les champs nécessaires sont obligatoires ;
- une disponibilité réservée ne doit plus être réservée une seconde fois ;
- les mots de passe ne sont jamais enregistrés en clair ;
- aucune table ne contient de diagnostic, ordonnance, numéro de sécurité sociale ou donnée de santé réelle.

## Suite prévue

Lors de l’implémentation, ce schéma donnera lieu à un fichier `database/doctordv.sql` contenant la création des tables, les contraintes, les données fictives de test et les requêtes nécessaires aux fonctionnalités de la V1.
