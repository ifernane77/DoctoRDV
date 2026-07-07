# Maquettes fonctionnelles — DoctoRDV

## Objectif

Ce document présente les maquettes fonctionnelles prévues pour l’application DoctoRDV.

Les maquettes sont volontairement simples. Elles servent à préparer le développement des pages principales de l’application.

L’objectif est de montrer les écrans attendus avant de commencer le code.

---

## 1. Maquette — Recherche de praticien

### Objectif de l’écran

Permettre à un patient fictif de rechercher un praticien disponible.

### Utilisateurs concernés

- Visiteur
- Patient connecté

### Éléments affichés

```text
+--------------------------------------------------+
|                     DoctoRDV                     |
+--------------------------------------------------+
| Accueil | Rechercher un praticien | Connexion     |
+--------------------------------------------------+

Recherche de praticien

Spécialité :
[ Médecin généraliste        v ]

Ville :
[ Saint-Pierre               ]

Nom du praticien :
[____________________________]

[ Rechercher ]

----------------------------------------------------

Résultats :

+----------------------+----------------------+--------------+
| Praticien            | Spécialité           | Action       |
+----------------------+----------------------+--------------+
| Dr Martin            | Médecin généraliste  | [ Voir ]     |
| Dr Payet             | Dentiste             | [ Voir ]     |
| Dr Hoarau            | Kinésithérapeute     | [ Voir ]     |
+----------------------+----------------------+--------------+
```

### Données affichées

- spécialité recherchée ;
- ville ;
- nom du praticien ;
- liste des praticiens ;
- spécialité du praticien ;
- bouton pour consulter la fiche.

### Règles prévues

- Le visiteur peut rechercher un praticien.
- Le patient peut consulter les résultats.
- Le bouton “Voir” permet d’accéder à la fiche du praticien.
- La recherche doit rester simple pour la première version.

---

## 2. Maquette — Fiche praticien

### Objectif de l’écran

Afficher les informations principales d’un praticien et permettre de consulter ses disponibilités.

### Utilisateurs concernés

- Visiteur
- Patient connecté

### Éléments affichés

```text
+--------------------------------------------------+
| Fiche praticien                                  |
+--------------------------------------------------+

Dr Martin
Médecin généraliste

Adresse :
12 rue Exemple, Saint-Pierre

Téléphone :
02 62 00 00 00

Description :
Praticien fictif disponible pour des consultations générales.

[ Voir les disponibilités ]

----------------------------------------------------

Prochaines disponibilités :

+-------------+-------------+-------------+
| Date        | Heure       | Action      |
+-------------+-------------+-------------+
| 20/08/2026  | 09:00       | [ Réserver ]|
| 20/08/2026  | 10:00       | [ Réserver ]|
| 21/08/2026  | 14:00       | [ Réserver ]|
+-------------+-------------+-------------+
```

### Données affichées

- nom du praticien ;
- spécialité ;
- adresse ;
- téléphone ;
- description ;
- prochaines disponibilités ;
- bouton de réservation.

### Règles prévues

- Un praticien appartient à une spécialité.
- Les disponibilités affichées doivent être disponibles.
- Un créneau réservé ne doit plus être proposé.
- Le patient peut accéder au formulaire de réservation depuis cette page.

---

## 3. Maquette — Calendrier des disponibilités

### Objectif de l’écran

Afficher les disponibilités d’un praticien sous forme de calendrier simple.

### Utilisateurs concernés

- Patient connecté
- Praticien
- Administrateur

### Éléments affichés

```text
+--------------------------------------------------+
| Calendrier — Dr Martin                           |
+--------------------------------------------------+

Semaine du 17/08/2026 au 23/08/2026

+------------+----------+----------+----------+----------+----------+
| Heure      | Lundi    | Mardi    | Mercredi | Jeudi    | Vendredi |
+------------+----------+----------+----------+----------+----------+
| 09:00      | Libre    | Réservé  | Libre    | Libre    | Réservé  |
| 10:00      | Libre    | Libre    | Réservé  | Libre    | Libre    |
| 11:00      | Réservé  | Libre    | Libre    | Réservé  | Libre    |
| 14:00      | Libre    | Libre    | Libre    | Libre    | Réservé  |
+------------+----------+----------+----------+----------+----------+

Légende :
Libre = créneau disponible
Réservé = créneau déjà pris

[ Retour fiche praticien ]
```

### Données affichées

- praticien concerné ;
- semaine affichée ;
- jours de la semaine ;
- heures disponibles ;
- statut du créneau ;
- retour vers la fiche praticien.

### Règles prévues

- Chaque disponibilité est liée à un praticien.
- Une disponibilité peut être libre, réservée ou annulée.
- Le patient ne peut réserver qu’un créneau libre.
- Le praticien peut consulter son planning.

---

## 4. Maquette — Formulaire de réservation

### Objectif de l’écran

Permettre à un patient de réserver un rendez-vous.

### Utilisateurs concernés

- Patient connecté

### Éléments affichés

```text
+--------------------------------------------------+
| Réservation de rendez-vous                       |
+--------------------------------------------------+

Praticien :
Dr Martin — Médecin généraliste

Date :
20/08/2026

Heure :
09:00

Informations patient :

Nom :
[____________________________]

Prénom :
[____________________________]

Email :
[____________________________]

Téléphone :
[____________________________]

Motif du rendez-vous :
[________________________________________]
[________________________________________]

[ Confirmer la réservation ]

----------------------------------------------------

Message possible :
Votre rendez-vous a bien été enregistré.
```

### Données affichées

- praticien ;
- spécialité ;
- date du rendez-vous ;
- heure du rendez-vous ;
- nom du patient ;
- prénom du patient ;
- email ;
- téléphone ;
- motif ;
- bouton de confirmation.

### Règles prévues

- Le patient doit être connecté pour réserver.
- Le formulaire doit contenir les informations nécessaires.
- Le créneau réservé ne doit plus être disponible.
- Une confirmation doit être affichée après réservation.
- Les données restent fictives dans le cadre du projet BTS.

---

## 5. Maquette — Espace praticien

### Objectif de l’écran

Permettre au praticien de consulter son planning et ses rendez-vous.

### Utilisateurs concernés

- Praticien

### Éléments affichés

```text
+--------------------------------------------------+
| Espace praticien — Dr Martin                     |
+--------------------------------------------------+

Menu :
[ Planning ] [ Rendez-vous ] [ Disponibilités ] [ Déconnexion ]

----------------------------------------------------

Planning du jour : 20/08/2026

+----------+----------------------+----------------+------------+
| Heure    | Patient              | Motif          | Statut     |
+----------+----------------------+----------------+------------+
| 09:00    | Jean Dupont          | Consultation   | Confirmé   |
| 10:00    | Marie Payet          | Suivi          | Confirmé   |
| 14:00    | Karim Hoarau         | Contrôle       | Annulé     |
+----------+----------------------+----------------+------------+

Actions :
[ Voir détail ] [ Marquer terminé ]
```

### Données affichées

- nom du praticien ;
- planning du jour ;
- heure du rendez-vous ;
- patient ;
- motif ;
- statut du rendez-vous ;
- actions possibles.

### Règles prévues

- Le praticien peut consulter ses rendez-vous.
- Le praticien ne voit que son propre planning.
- Le praticien peut voir les détails d’un rendez-vous.
- Le praticien peut marquer un rendez-vous comme terminé.
- L’accès est limité au rôle praticien.

---

## Synthèse des maquettes

| N° | Écran | Objectif | Priorité |
|---:|---|---|---|
| 1 | Recherche de praticien | Trouver un praticien | Haute |
| 2 | Fiche praticien | Voir les informations et disponibilités | Haute |
| 3 | Calendrier des disponibilités | Visualiser les créneaux | Haute |
| 4 | Formulaire de réservation | Réserver un rendez-vous | Haute |
| 5 | Espace praticien | Consulter le planning | Moyenne |

## Remarque

Ces maquettes sont des maquettes fonctionnelles en texte.

Elles ne correspondent pas encore à du code HTML, CSS ou PHP.

Elles seront utilisées pour préparer les futures pages de l’application.