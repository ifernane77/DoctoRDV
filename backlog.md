# Backlog — DoctoRDV

## Objectif du backlog

Ce backlog permet de suivre les fonctionnalités prévues pour l’application DoctoRDV.

Il est mis à jour progressivement en fonction de l’avancement réel du projet et des notions étudiées pendant la formation.

L’objectif est de distinguer clairement :

- les fonctionnalités prévues ;
- les prototypes d’interface déjà réalisés ;
- les fonctionnalités réellement développées ;
- les travaux restant à effectuer.

---

## Fonctionnalités prioritaires

| Priorité | Fonctionnalité | Description | Statut |
|---|---|---|---|
| Haute | Page d’accueil | Présenter l’application et orienter l’utilisateur | Terminé — prototype HTML/CSS |
| Haute | Liste des praticiens | Afficher les praticiens disponibles | Terminé — prototype HTML/CSS |
| Haute | Disponibilités | Afficher les créneaux proposés par les praticiens | Terminé — affichage statique HTML/CSS |
| Haute | Filtre par spécialité | Permettre de sélectionner une spécialité pour rechercher un praticien | Interface terminée — filtrage non fonctionnel |
| Haute | Réservation | Permettre à un patient fictif de réserver un rendez-vous | Pas commencé |
| Haute | Authentification | Permettre la connexion des utilisateurs | Interface terminée — authentification non fonctionnelle |
| Haute | Gestion des rôles | Prévoir les rôles patient, praticien et administrateur | Conception préparée — implémentation non commencée |
| Moyenne | Espace patient | Permettre au patient de consulter ses rendez-vous | Terminé — prototype statique |
| Moyenne | Annulation | Permettre au patient d’annuler un rendez-vous | Interface préparée — fonctionnalité non développée |
| Moyenne | Planning praticien | Permettre au praticien de consulter ses rendez-vous | Pas commencé |
| Moyenne | Administration | Gérer les praticiens, spécialités, créneaux et rendez-vous | Pas commencé |
| Moyenne | Responsive | Adapter correctement l’interface aux différentes tailles d’écran | Pas commencé |
| Moyenne | Base de données MySQL | Créer la base de données réelle de l’application | Pas commencé |
| Moyenne | Connexion PHP / MySQL | Connecter l’application à la base de données | Pas commencé |
| Moyenne | Tests fonctionnels | Vérifier les principales fonctionnalités de l’application | Pas commencé |

---

## Version minimale attendue

La version minimale de DoctoRDV doit permettre de :

- consulter les praticiens ;
- filtrer les praticiens par spécialité ;
- consulter leurs créneaux disponibles ;
- se connecter avec un compte utilisateur fictif ;
- réserver un rendez-vous ;
- consulter ses propres rendez-vous ;
- annuler l’un de ses rendez-vous ;
- permettre au praticien de consulter son planning ;
- administrer les principales données de l’application.

Les interfaces HTML/CSS déjà réalisées ne constituent pas encore à elles seules une version fonctionnelle de l’application.

Les fonctionnalités dynamiques seront développées progressivement lorsque les notions nécessaires en PHP, SQL et MySQL auront été étudiées.

---

## Version améliorée

Une version améliorée pourra notamment permettre de :

- améliorer l’interface avec Bootstrap ;
- améliorer le responsive ;
- ajouter des contrôles de formulaire ;
- améliorer l’ergonomie des différents espaces utilisateurs ;
- renforcer les contrôles d’accès ;
- ajouter des tests fonctionnels complémentaires ;
- améliorer les messages d’erreur et de confirmation.

Les fonctionnalités suivantes restent hors du périmètre prévu de la version BTS :

- paiement en ligne ;
- notifications SMS automatiques ;
- téléconsultation ;
- application mobile native obligatoire ;
- gestion de dossiers médicaux réels ;
- stockage de données médicales sensibles.

---

## Suivi de réalisation

| Tâche | Statut | Date prévue | Date réalisée | Preuve |
|---|---|---|---|---|
| Cadrer le projet DoctoRDV | Terminé | Non renseignée à l’époque | 04/07/2026 | Commit `0d04b63` |
| Préparer l’environnement technique | Terminé | Non renseignée à l’époque | 04/07/2026 | Commit `f46a721` |
| Concevoir le modèle de données initial | Terminé — conception uniquement | Non renseignée à l’époque | 05/07/2026 | Commit `93c8f99` |
| Créer les maquettes fonctionnelles | Terminé | Non renseignée à l’époque | 07/07/2026 | Commit `42dced2` |
| Préparer l’architecture applicative | Terminé — conception uniquement | Non renseignée à l’époque | 07/07/2026 | Commit `83ec994` |
| Préparer les rôles et droits d’accès | Terminé — conception uniquement | Non renseignée à l’époque | 08/07/2026 | Commit `e9de4db` |
| Harmoniser le cadrage fonctionnel | Terminé | Non renseignée à l’époque | 16/09/2026 | Commit `02d606f` |
| Créer la page d’accueil HTML/CSS | Terminé | Non renseignée à l’époque | 26/09/2026 | Commit `1871fe7` |
| Créer la liste des praticiens | Terminé | Non renseignée à l’époque | 26/09/2026 | Commit `1871fe7` |
| Afficher les disponibilités des praticiens | Terminé — affichage statique | Non renseignée à l’époque | 26/09/2026 | Commit `1871fe7` |
| Ajouter le formulaire de filtre par spécialité | Terminé — interface uniquement | Non renseignée à l’époque | 04/10/2026 | Commit `11fc7f7` |
| Créer l’écran de connexion | Terminé — interface uniquement | Non renseignée à l’époque | 04/10/2026 | Commits `11fc7f7` et `3508fa6` |
| Créer la page « Mes rendez-vous » | Terminé — prototype statique | Non renseignée à l’époque | 04/10/2026 | Commits `11fc7f7` et `3508fa6` |
| Finaliser les interfaces HTML/CSS de la semaine 16 | Terminé | Non renseignée à l’époque | 04/10/2026 | Commit `3508fa6` |
| Préciser le périmètre E6 | Terminé | Non renseignée à l’époque | 09/10/2026 | Commit `b775c8a` |
| Adapter l’interface au responsive | Pas commencé | À définir | — | — |
| Créer la base MySQL | Pas commencé | À définir | — | — |
| Connecter PHP à MySQL | Pas commencé | À définir | — | — |
| Développer l’authentification réelle | Pas commencé | À définir | — | — |
| Développer le filtre par spécialité | Pas commencé | À définir | — | — |
| Développer la réservation | Pas commencé | À définir | — | — |
| Développer l’annulation | Pas commencé | À définir | — | — |
| Développer le planning praticien | Pas commencé | À définir | — | — |
| Développer l’espace administrateur | Pas commencé | À définir | — | — |
| Réaliser les tests fonctionnels | Pas commencé | À définir | — | — |

---

## Suivi chronologique du projet

| Date | Travail réalisé | Résultat |
|---|---|---|
| 04/07/2026 | Cadrage initial, acteurs, flux, cas d’utilisation et préparation de l’environnement | Base fonctionnelle et technique du projet préparée |
| 05/07/2026 | Conception du modèle de données | MCD, MLD et règles de gestion préparés |
| 07/07/2026 | Maquettes et architecture applicative | Organisation des futurs écrans et de l’application préparée |
| 08/07/2026 | Préparation des rôles et droits d’accès | Règles d’accès prévues pour visiteur, patient, praticien et administrateur |
| 16/09/2026 | Harmonisation du cadrage fonctionnel | Périmètre du projet clarifié |
| 26/09/2026 | Première implémentation HTML/CSS | Page d’accueil, praticiens, disponibilités et styles créés |
| 04/10/2026 | Développement des interfaces de la semaine 16 | Filtre par spécialité, connexion et espace patient statique ajoutés |
| 04/10/2026 | Corrections des interfaces | Interfaces HTML/CSS corrigées et finalisées |
| 09/10/2026 | Mise à jour du périmètre E6 | Limites du projet précisées |

---

## Prochaines étapes

Les prochaines évolutions seront réalisées en fonction des notions étudiées pendant la formation.

À ce stade, les principales étapes restantes sont :

1. terminer les notions HTML/CSS nécessaires ;
2. travailler le responsive lorsque la notion aura été étudiée ;
3. créer réellement la base de données MySQL ;
4. connecter l’application à la base avec PHP ;
5. développer l’authentification ;
6. développer le filtrage dynamique des praticiens ;
7. développer la réservation ;
8. développer l’annulation ;
9. développer le planning praticien ;
10. développer l’administration ;
11. réaliser les tests fonctionnels ;
12. stabiliser la réalisation pour l’épreuve E6.

---

## Règle de suivi

À partir de maintenant, lorsqu’une nouvelle tâche est prévue, sa date prévue doit être renseignée avant de commencer le développement.

Exemple :

| Tâche | Statut | Date prévue | Date réalisée |
|---|---|---|---|
| Créer la base MySQL | À faire | 20/10/2026 | — |

Une fois la tâche terminée :

| Tâche | Statut | Date prévue | Date réalisée |
|---|---|---|---|
| Créer la base MySQL | Terminé | 20/10/2026 | 22/10/2026 |

Cela permettra de comparer le travail prévu au travail réellement réalisé et de conserver une trace de la planification du projet.