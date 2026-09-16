# Analyse fonctionnelle — DoctoRDV

## Objectif

Ce document définit le périmètre fonctionnel de la version 1 de DoctoRDV. Il sert de référence pour la conception de la base de données, les maquettes, le développement, les tests et la démonstration E6.

## Acteurs

### Visiteur

Le visiteur n’est pas connecté. Il peut consulter les informations publiques : liste des praticiens, spécialités, fiches praticiens et créneaux disponibles. Il ne peut pas réserver un rendez-vous.

### Patient fictif

Le patient est un utilisateur connecté disposant du rôle `patient`. Il peut consulter les créneaux disponibles, réserver un rendez-vous, consulter uniquement ses rendez-vous et annuler uniquement l’un des siens.

### Praticien

Le praticien est un utilisateur connecté lié à une fiche praticien. Il peut consulter uniquement son planning et gérer ses propres créneaux. Il ne peut pas consulter le planning d’un autre praticien.

### Administrateur

L’administrateur gère les données nécessaires à l’application : praticiens, spécialités, créneaux et rendez-vous. Il peut également consulter les journaux d’actions prévus par l’application.

## Droits principaux

| Fonctionnalité | Visiteur | Patient | Praticien | Administrateur |
|---|---:|---:|---:|---:|
| Consulter les praticiens | Oui | Oui | Oui | Oui |
| Filtrer par spécialité | Oui | Oui | Oui | Oui |
| Voir les créneaux disponibles | Oui | Oui | Oui | Oui |
| Réserver un créneau | Non | Oui | Non | Oui |
| Annuler son rendez-vous | Non | Oui | Non | Oui |
| Consulter ses rendez-vous | Non | Oui | Non | Oui |
| Consulter son planning | Non | Non | Oui | Oui |
| Gérer ses créneaux | Non | Non | Oui | Oui |
| Gérer praticiens et spécialités | Non | Non | Non | Oui |
| Gérer tous les rendez-vous | Non | Non | Non | Oui |

## Parcours principal : réservation

1. Le visiteur consulte un praticien et ses créneaux disponibles.
2. Pour réserver, il se connecte avec un compte patient fictif.
3. Le patient sélectionne un créneau encore disponible.
4. L’application vérifie que le créneau n’a pas déjà été réservé et que le patient possède le rôle autorisé.
5. Le rendez-vous est enregistré et le créneau n’est plus proposé comme disponible.
6. L’action de réservation est journalisée.
7. Le patient consulte ensuite son espace personnel pour voir ou annuler son rendez-vous.

## Parcours secondaire : annulation

1. Le patient connecté consulte uniquement ses rendez-vous.
2. Il choisit un rendez-vous à annuler.
3. L’application vérifie que ce rendez-vous appartient bien au patient connecté.
4. Le statut du rendez-vous et du créneau est mis à jour.
5. L’annulation est journalisée.

## Règles de gestion essentielles

- un créneau appartient à un seul praticien ;
- un créneau disponible ne peut être réservé qu’une seule fois ;
- un rendez-vous concerne un seul patient, un seul praticien et un seul créneau ;
- un patient ne peut ni voir ni annuler les rendez-vous d’un autre patient ;
- un praticien ne peut consulter que son propre planning ;
- les actions de création, modification et annulation de rendez-vous sont tracées ;
- aucune donnée médicale sensible n’est enregistrée.

## Écrans de la version 1

- accueil et liste des praticiens ;
- fiche praticien et créneaux ;
- connexion ;
- espace patient : mes rendez-vous ;
- espace praticien : mon planning et mes créneaux ;
- administration : praticiens, spécialités, créneaux et rendez-vous.

## Critères de réussite fonctionnels

La V1 est considérée comme exploitable lorsque les parcours de réservation et d’annulation sont réalisés avec des données fictives, que les accès sont contrôlés selon le rôle, qu’un doublon de réservation est empêché et que les résultats sont vérifiés dans un cahier de tests.
