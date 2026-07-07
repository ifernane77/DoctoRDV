# Parcours utilisateur — DoctoRDV

## Objectif

Ce document décrit les principaux parcours utilisateurs prévus dans l’application DoctoRDV.

Il permet de relier les maquettes aux besoins fonctionnels du projet.

---

## 1. Parcours — Patient : rechercher un praticien

### Acteur

Patient fictif

### Objectif

Trouver un praticien selon une spécialité ou une recherche simple.

### Étapes

1. Le patient arrive sur l’application.
2. Il ouvre la page de recherche.
3. Il choisit une spécialité.
4. Il saisit éventuellement une ville ou un nom.
5. Il lance la recherche.
6. Il consulte la liste des praticiens.
7. Il clique sur “Voir” pour accéder à une fiche praticien.

### Résultat attendu

Le patient trouve un praticien correspondant à sa recherche.

---

## 2. Parcours — Patient : consulter une fiche praticien

### Acteur

Patient fictif

### Objectif

Consulter les informations d’un praticien avant de réserver.

### Étapes

1. Le patient ouvre une fiche praticien.
2. Il consulte la spécialité du praticien.
3. Il consulte les informations principales.
4. Il regarde les prochaines disponibilités.
5. Il choisit un créneau disponible.
6. Il clique sur “Réserver”.

### Résultat attendu

Le patient accède au formulaire de réservation pour un créneau disponible.

---

## 3. Parcours — Patient : réserver un rendez-vous

### Acteur

Patient fictif connecté

### Objectif

Réserver un rendez-vous avec un praticien.

### Étapes

1. Le patient choisit un créneau disponible.
2. Il ouvre le formulaire de réservation.
3. Il vérifie le praticien, la date et l’heure.
4. Il complète ses informations.
5. Il saisit un motif simple.
6. Il confirme la réservation.

### Résultat attendu

Le rendez-vous est enregistré avec le statut confirmé.

---

## 4. Parcours — Praticien : consulter son planning

### Acteur

Praticien

### Objectif

Consulter les rendez-vous de la journée.

### Étapes

1. Le praticien se connecte.
2. Il accède à son espace praticien.
3. Il consulte son planning du jour.
4. Il voit les rendez-vous confirmés ou annulés.
5. Il peut ouvrir le détail d’un rendez-vous.
6. Il peut marquer un rendez-vous comme terminé.

### Résultat attendu

Le praticien peut suivre ses rendez-vous de manière organisée.

---

## 5. Parcours — Praticien : suivre ses disponibilités

### Acteur

Praticien

### Objectif

Visualiser les créneaux disponibles et réservés.

### Étapes

1. Le praticien ouvre son espace.
2. Il accède au calendrier des disponibilités.
3. Il consulte les créneaux libres.
4. Il consulte les créneaux réservés.
5. Il vérifie les rendez-vous associés.

### Résultat attendu

Le praticien visualise son organisation de la semaine.

---

## Synthèse des parcours

| N° | Acteur | Action principale | Écran lié |
|---:|---|---|---|
| 1 | Patient | Rechercher un praticien | Recherche de praticien |
| 2 | Patient | Consulter une fiche praticien | Fiche praticien |
| 3 | Patient | Réserver un rendez-vous | Formulaire de réservation |
| 4 | Praticien | Consulter son planning | Espace praticien |
| 5 | Praticien | Voir ses disponibilités | Calendrier des disponibilités |

## Justification

Ces parcours couvrent les besoins principaux de DoctoRDV :

- rechercher un praticien ;
- consulter une fiche ;
- choisir un créneau ;
- réserver un rendez-vous ;
- permettre au praticien de consulter son planning.

Ils permettent de préparer le développement sans commencer directement par le code.