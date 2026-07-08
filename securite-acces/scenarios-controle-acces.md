# Scénarios de contrôle d’accès — DoctoRDV

## Objectif

Ce document prépare des scénarios simples pour vérifier les droits dans DoctoRDV.

Ces scénarios serviront plus tard pour tester l’application quand l’authentification sera développée.

---

## Scénario 1 — Visiteur qui veut réserver

### Situation

Un visiteur consulte une fiche praticien et veut réserver un rendez-vous.

### Résultat attendu

Le visiteur doit être invité à se connecter ou à créer un compte.

### Règle associée

Un visiteur ne peut pas réserver sans être connecté.

---

## Scénario 2 — Patient qui réserve un rendez-vous

### Situation

Un patient connecté choisit un créneau disponible.

### Résultat attendu

Le patient peut réserver le rendez-vous.

### Règle associée

Un patient connecté peut réserver un créneau libre.

---

## Scénario 3 — Patient qui consulte ses rendez-vous

### Situation

Un patient connecté ouvre son espace personnel.

### Résultat attendu

Il voit uniquement ses propres rendez-vous.

### Règle associée

Un patient ne doit pas voir les rendez-vous d’un autre patient.

---

## Scénario 4 — Praticien qui consulte son planning

### Situation

Un praticien connecté ouvre son espace praticien.

### Résultat attendu

Il voit son propre planning.

### Règle associée

Un praticien ne doit pas voir le planning d’un autre praticien.

---

## Scénario 5 — Administrateur qui gère les utilisateurs

### Situation

Un administrateur ouvre la gestion des utilisateurs.

### Résultat attendu

Il peut ajouter, modifier ou désactiver un utilisateur.

### Règle associée

Seul l’administrateur peut gérer les utilisateurs.

---

## Scénario 6 — Patient qui tente d’accéder à l’administration

### Situation

Un patient essaie d’accéder à une page réservée à l’administrateur.

### Résultat attendu

L’accès doit être refusé.

### Règle associée

Un patient ne doit pas accéder aux pages d’administration.

---

## Remarque personnelle

Ces scénarios me serviront plus tard pour tester les contrôles d’accès.

Pour l’instant, ils sont préparés en documentation, car le développement de l’authentification viendra plus tard.