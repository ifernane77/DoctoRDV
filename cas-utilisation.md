# Cas d’utilisation — DoctoRDV

## Objectif du document

Ce document présente les principaux cas d’utilisation de l’application DoctoRDV.

Les cas d’utilisation permettent de décrire les actions principales réalisées par les utilisateurs avant le développement.

## Acteurs concernés

| Acteur | Description |
|---|---|
| Visiteur | Consulte les informations publiques |
| Patient fictif | Réserve ou annule un rendez-vous |
| Praticien | Consulte son planning |
| Administrateur | Gère les praticiens, les créneaux et les rendez-vous |

---

# CU01 — Rechercher un praticien

## Objectif

Permettre à un visiteur ou à un patient fictif de rechercher un praticien.

## Acteur principal

- Visiteur
- Patient fictif

## Préconditions

- L’application est accessible.
- Des praticiens existent dans la base de données.

## Scénario nominal

1. L’utilisateur accède à la page des praticiens.
2. Il consulte la liste des praticiens.
3. Il peut filtrer ou rechercher un praticien.
4. Le système affiche les praticiens correspondants.
5. L’utilisateur sélectionne un praticien.

## Données nécessaires

- Nom du praticien
- Prénom
- Spécialité
- Informations de présentation

## Exceptions possibles

| Situation | Réaction du système |
|---|---|
| Aucun praticien trouvé | Afficher un message d’information |
| Recherche vide | Afficher tous les praticiens |

## Résultat attendu

L’utilisateur trouve un praticien et peut consulter ses disponibilités.

---

# CU02 — Voir les disponibilités

## Objectif

Permettre à un patient fictif de consulter les créneaux disponibles d’un praticien.

## Acteur principal

- Patient fictif

## Préconditions

- Le praticien existe.
- Des créneaux sont disponibles.

## Scénario nominal

1. Le patient sélectionne un praticien.
2. Le système affiche les créneaux disponibles.
3. Le patient choisit un créneau.
4. Le système prépare la réservation.

## Données nécessaires

- Praticien
- Date
- Heure
- Statut du créneau

## Exceptions possibles

| Situation | Réaction du système |
|---|---|
| Aucun créneau disponible | Afficher un message |
| Créneau déjà réservé | Ne pas proposer le créneau |

## Résultat attendu

Le patient peut choisir un créneau disponible.

---

# CU03 — Réserver un rendez-vous

## Objectif

Permettre à un patient fictif de réserver un rendez-vous avec un praticien.

## Acteur principal

- Patient fictif

## Préconditions

- Le patient est connecté.
- Le praticien existe.
- Le créneau est disponible.

## Scénario nominal

1. Le patient choisit un praticien.
2. Il sélectionne un créneau disponible.
3. Il confirme la réservation.
4. Le système vérifie que le créneau est encore disponible.
5. Le rendez-vous est enregistré.
6. Le créneau passe à l’état réservé.
7. Le rendez-vous apparaît dans l’espace patient et le planning praticien.

## Données nécessaires

- Patient
- Praticien
- Date
- Heure
- Statut du rendez-vous

## Exceptions possibles

| Situation | Réaction du système |
|---|---|
| Patient non connecté | Rediriger vers la connexion |
| Créneau déjà réservé | Afficher un message d’erreur |
| Donnée manquante | Refuser la réservation |

## Résultat attendu

Le rendez-vous est créé et enregistré en base de données.

---

# CU04 — Annuler un rendez-vous

## Objectif

Permettre à un patient fictif ou à un administrateur d’annuler un rendez-vous.

## Acteur principal

- Patient fictif
- Administrateur

## Préconditions

- L’utilisateur est connecté.
- Le rendez-vous existe.
- L’utilisateur possède les droits nécessaires.

## Scénario nominal

1. L’utilisateur consulte la liste des rendez-vous.
2. Il sélectionne un rendez-vous.
3. Il clique sur “Annuler”.
4. Le système demande une confirmation.
5. L’utilisateur confirme.
6. Le rendez-vous passe au statut annulé.
7. Le créneau peut redevenir disponible selon la règle prévue.

## Données nécessaires

- Rendez-vous
- Statut
- Date d’annulation
- Utilisateur concerné

## Exceptions possibles

| Situation | Réaction du système |
|---|---|
| Rendez-vous introuvable | Afficher une erreur |
| Droits insuffisants | Bloquer l’action |
| Rendez-vous déjà annulé | Afficher un message |

## Résultat attendu

Le rendez-vous est annulé et son statut est mis à jour.

---

# CU05 — Consulter le planning praticien

## Objectif

Permettre à un praticien de consulter ses rendez-vous.

## Acteur principal

- Praticien

## Préconditions

- Le praticien est connecté.
- Des rendez-vous sont associés à son compte.

## Scénario nominal

1. Le praticien se connecte.
2. Il accède à son tableau de bord.
3. Le système affiche ses rendez-vous.
4. Le praticien consulte son planning par date.

## Données nécessaires

- Praticien
- Date
- Heure
- Patient fictif
- Statut du rendez-vous

## Exceptions possibles

| Situation | Réaction du système |
|---|---|
| Aucun rendez-vous | Afficher un planning vide |
| Accès non autorisé | Bloquer l’accès |

## Résultat attendu

Le praticien voit uniquement ses rendez-vous.

---

# CU06 — Administrer les praticiens et créneaux

## Objectif

Permettre à l’administrateur de gérer les praticiens et les créneaux disponibles.

## Acteur principal

- Administrateur

## Préconditions

- L’administrateur est connecté.
- Il possède les droits d’administration.

## Scénario nominal

1. L’administrateur accède au tableau de bord.
2. Il peut créer ou modifier un praticien.
3. Il peut créer des créneaux.
4. Il peut consulter les rendez-vous.
5. Les données sont enregistrées dans la base.

## Données nécessaires

- Informations praticien
- Spécialité
- Créneaux
- Statut des créneaux

## Exceptions possibles

| Situation | Réaction du système |
|---|---|
| Champ obligatoire vide | Afficher une erreur |
| Créneau déjà existant | Prévenir l’administrateur |
| Droits insuffisants | Bloquer l’action |

## Résultat attendu

Les praticiens et créneaux sont administrés correctement.

---

# Synthèse des cas d’utilisation

| Code | Cas d’utilisation | Acteur principal | Priorité |
|---|---|---|---|
| CU01 | Rechercher un praticien | Visiteur / Patient | Haute |
| CU02 | Voir les disponibilités | Patient | Haute |
| CU03 | Réserver un rendez-vous | Patient | Haute |
| CU04 | Annuler un rendez-vous | Patient / Admin | Moyenne |
| CU05 | Consulter le planning praticien | Praticien | Haute |
| CU06 | Administrer praticiens et créneaux | Administrateur | Haute |

## Lien avec la suite du projet

Ces cas d’utilisation serviront à préparer :

- les maquettes ;
- le MCD ;
- le script SQL ;
- les pages PHP ;
- les tests fonctionnels ;
- la présentation E6 SLAM.