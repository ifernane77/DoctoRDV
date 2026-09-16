# Présentation du projet — DoctoRDV

## Contexte

MediCentre Nova est une maison médicale fictive. La prise de rendez-vous est actuellement gérée principalement par téléphone, ce qui peut entraîner des erreurs de planning, une mauvaise visibilité sur les disponibilités et une perte de temps pour les patients comme pour les praticiens.

DoctoRDV est une application web fictive conçue pour centraliser cette gestion. Elle est réalisée comme support principal de l’épreuve E6 du BTS SIO, option SLAM.

## Problème traité

La maison médicale a besoin d’un outil simple permettant :

- de présenter les praticiens et leurs spécialités ;
- d’afficher les créneaux disponibles ;
- de réserver ou d’annuler un rendez-vous ;
- de donner à chaque utilisateur uniquement les accès correspondant à son rôle ;
- de consulter un planning sans exposer les rendez-vous des autres utilisateurs.

## Objectif de la version 1

La version 1 de DoctoRDV doit fournir un parcours complet et démontrable : un patient se connecte, choisit un praticien, réserve un créneau disponible, consulte son rendez-vous puis peut l’annuler. Le praticien consulte son propre planning. L’administrateur gère les données nécessaires au fonctionnement de l’application.

## Utilisateurs

| Utilisateur | Besoin couvert |
|---|---|
| Visiteur | Consulter les praticiens, les spécialités et les disponibilités publiques. |
| Patient fictif | Réserver, consulter et annuler ses propres rendez-vous. |
| Praticien | Consulter son planning et gérer ses créneaux. |
| Administrateur | Gérer les praticiens, spécialités, créneaux et rendez-vous. |

## Fonctionnalités de la version 1

- authentification des comptes ;
- gestion des rôles et contrôle d’accès ;
- consultation et filtrage des praticiens par spécialité ;
- affichage des créneaux disponibles ;
- réservation d’un créneau par un patient connecté ;
- annulation d’un rendez-vous par son patient ou par l’administrateur ;
- consultation du planning personnel par un praticien ;
- gestion des praticiens, spécialités et créneaux par l’administrateur ;
- journalisation des actions importantes : création, modification et annulation d’un rendez-vous.

## Données et confidentialité

Les données sont exclusivement fictives et limitées au strict nécessaire : identité fictive, coordonnées fictives, rôle, praticien, créneau et statut de rendez-vous. Aucun contenu médical n’est collecté ni stocké.

Les règles de confidentialité de la V1 sont les suivantes :

- un patient ne consulte que ses propres rendez-vous ;
- un praticien ne consulte que son propre planning ;
- les pages d’administration sont réservées à l’administrateur ;
- les mots de passe sont stockés sous forme hachée ;
- les actions importantes sont tracées pour faciliter le suivi et les tests.

## Limites de la version 1

DoctoRDV n’est pas une plateforme médicale réelle. La V1 exclut le paiement, la téléconsultation, les rappels automatiques, la synchronisation d’agenda, les dossiers médicaux et toute donnée de santé réelle.

## Technologies

L’application sera développée avec PHP, MySQL, HTML, CSS, Bootstrap et, si besoin, JavaScript simple. Elle sera testée localement avec Laragon et versionnée avec Git et GitHub.
