# MLD brouillon — DoctoRDV

## Objectif

Ce document présente une première version du modèle logique de données du projet DoctoRDV.

Le MLD prépare la future base de données MySQL à partir du MCD.  
Il indique les tables prévues, leurs champs principaux, les clés primaires et les clés étrangères.

Cette version reste un brouillon. Elle pourra être améliorée lors de la création du script SQL.

---

## Modèle logique de données

```text
roles(
    id,
    nom
)

users(
    id,
    role_id,
    nom,
    prenom,
    email,
    mot_de_passe,
    telephone
)

specialites(
    id,
    nom
)

praticiens(
    id,
    user_id,
    specialite_id,
    nom,
    prenom,
    email,
    telephone,
    description
)

disponibilites(
    id,
    praticien_id,
    date_disponibilite,
    heure_debut,
    heure_fin,
    statut
)

rendez_vous(
    id,
    patient_id,
    praticien_id,
    disponibilite_id,
    statut,
    date_creation
)
```

---

## Clés primaires

Chaque table possède une clé primaire appelée `id`.

```text
roles.id
users.id
specialites.id
praticiens.id
disponibilites.id
rendez_vous.id
```

---

## Clés étrangères

```text
users.role_id → roles.id

praticiens.user_id → users.id
praticiens.specialite_id → specialites.id

disponibilites.praticien_id → praticiens.id

rendez_vous.patient_id → users.id
rendez_vous.praticien_id → praticiens.id
rendez_vous.disponibilite_id → disponibilites.id
```

---

## Explication des relations

| Relation | Explication |
|---|---|
| `roles` → `users` | Un rôle peut être attribué à plusieurs utilisateurs |
| `users` → `praticiens` | Un utilisateur peut être associé à un praticien |
| `specialites` → `praticiens` | Une spécialité peut concerner plusieurs praticiens |
| `praticiens` → `disponibilites` | Un praticien peut proposer plusieurs disponibilités |
| `users` → `rendez_vous` | Un patient est un utilisateur qui peut réserver plusieurs rendez-vous |
| `praticiens` → `rendez_vous` | Un praticien peut avoir plusieurs rendez-vous |
| `disponibilites` → `rendez_vous` | Une disponibilité peut être utilisée pour un rendez-vous |

---

## Justification du modèle

Le modèle reste simple pour correspondre au niveau attendu en BTS SIO SLAM.

Il permet de gérer les éléments essentiels de DoctoRDV :

- les utilisateurs ;
- les rôles ;
- les praticiens ;
- les spécialités ;
- les disponibilités ;
- les rendez-vous.

Le choix de représenter le patient comme un utilisateur avec le rôle `patient` évite d’ajouter trop de tables au début du projet.

---

## Limites du modèle

Cette version ne contient pas encore :

- les types SQL exacts ;
- les contraintes `NOT NULL` ;
- les contraintes `UNIQUE` ;
- les index ;
- les règles de suppression ;
- les données de test.

Ces éléments seront ajoutés plus tard dans le script SQL.