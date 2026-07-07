# Rôles et accès prévus — DoctoRDV

## Objectif

Ce document prépare les rôles utilisateurs prévus dans DoctoRDV.

Cette semaine, les leçons portent sur les utilisateurs, les groupes et les accès.

J’utilise donc cette logique pour réfléchir aux futurs rôles de l’application.

---

## Rôles prévus

| Rôle | Description |
|---|---|
| Administrateur | Gère les praticiens, spécialités, disponibilités et rendez-vous |
| Praticien | Consulte son planning et ses rendez-vous |
| Patient | Recherche un praticien et réserve un rendez-vous |
| Visiteur | Consulte certaines informations sans être connecté |

---

## Administrateur

L’administrateur pourra plus tard :

- gérer les comptes utilisateurs ;
- gérer les praticiens ;
- gérer les spécialités ;
- gérer les disponibilités ;
- consulter les rendez-vous.

Ce rôle doit avoir plus de droits que les autres.

---

## Praticien

Le praticien pourra plus tard :

- se connecter ;
- consulter son planning ;
- voir ses rendez-vous ;
- marquer un rendez-vous comme terminé.

Le praticien ne doit pas gérer toute l’application.

---

## Patient

Le patient pourra plus tard :

- rechercher un praticien ;
- consulter une fiche praticien ;
- choisir un créneau ;
- réserver un rendez-vous ;
- annuler un rendez-vous si cette fonction est prévue.

Le patient ne doit pas accéder aux rendez-vous des autres patients.

---

## Visiteur

Le visiteur pourra consulter certaines pages publiques.

Il pourra par exemple :

- rechercher un praticien ;
- consulter une fiche praticien.

Pour réserver, il devra être connecté.

---

## Règles simples d’accès

| Action | Visiteur | Patient | Praticien | Admin |
|---|---|---|---|---|
| Rechercher un praticien | Oui | Oui | Oui | Oui |
| Réserver un rendez-vous | Non | Oui | Non | Oui |
| Consulter son planning | Non | Non | Oui | Oui |
| Gérer les praticiens | Non | Non | Non | Oui |
| Gérer les disponibilités | Non | Non | Limité | Oui |
| Gérer les utilisateurs | Non | Non | Non | Oui |

---

## Remarque personnelle

Cette réflexion m’aide à préparer la sécurité de l’application.

Je ne développe pas encore les contrôles d’accès, mais je prépare les règles qui serviront plus tard dans le code.