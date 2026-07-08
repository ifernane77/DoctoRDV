# Matrice rôles / droits — DoctoRDV

## Objectif

Ce document prépare les droits des futurs utilisateurs de DoctoRDV.

À cette étape, les droits ne sont pas encore codés dans l’application.

Le but est de savoir qui pourra faire quoi avant de développer l’authentification.

---

## Rôles prévus

Les rôles prévus dans DoctoRDV sont :

- visiteur ;
- patient ;
- praticien ;
- administrateur.

---

## Matrice des droits

| Action | Visiteur | Patient | Praticien | Administrateur |
|---|---:|---:|---:|---:|
| Rechercher un praticien | Oui | Oui | Oui | Oui |
| Consulter une fiche praticien | Oui | Oui | Oui | Oui |
| Voir les disponibilités | Oui | Oui | Oui | Oui |
| Réserver un rendez-vous | Non | Oui | Non | Oui |
| Annuler son rendez-vous | Non | Oui | Non | Oui |
| Consulter ses rendez-vous | Non | Oui | Non | Oui |
| Consulter son planning | Non | Non | Oui | Oui |
| Marquer un rendez-vous terminé | Non | Non | Oui | Oui |
| Gérer les praticiens | Non | Non | Non | Oui |
| Gérer les spécialités | Non | Non | Non | Oui |
| Gérer les disponibilités | Non | Non | Limité | Oui |
| Gérer les utilisateurs | Non | Non | Non | Oui |

---

## Explication simple

Le visiteur peut seulement consulter les informations publiques.

Le patient peut réserver et suivre ses propres rendez-vous.

Le praticien peut consulter son planning et suivre ses rendez-vous.

L’administrateur peut gérer l’ensemble de l’application.

---

## Règles importantes

- Un patient ne doit pas voir les rendez-vous d’un autre patient.
- Un praticien ne doit pas voir le planning d’un autre praticien.
- Un visiteur ne doit pas pouvoir réserver sans compte.
- L’administrateur doit être le seul à gérer les utilisateurs.
- Les droits seront vérifiés plus tard dans le code.

---

## Remarque personnelle

Cette matrice m’aide à préparer la sécurité de DoctoRDV.

Je ne code pas encore les contrôles d’accès, car les leçons PHP et sessions arrivent plus tard dans mon planning.