# Règles de gestion — DoctoRDV

## Objectif

Ce document présente les principales règles de gestion prévues pour l’application DoctoRDV.

Ces règles permettent de préparer la conception de la base de données et le futur développement.

## Règles liées aux utilisateurs

- Un utilisateur possède un seul rôle.
- Un rôle peut être attribué à plusieurs utilisateurs.
- Les rôles prévus sont : administrateur, praticien et patient.
- Un utilisateur devra se connecter pour réserver un rendez-vous.
- Un visiteur non connecté pourra consulter certaines informations publiques.

## Règles liées aux praticiens

- Un praticien appartient à une spécialité.
- Une spécialité peut être associée à plusieurs praticiens.
- Un praticien peut avoir plusieurs disponibilités.
- Un praticien peut consulter son planning.

## Règles liées aux disponibilités

- Une disponibilité est liée à un seul praticien.
- Une disponibilité possède une date, une heure de début et une heure de fin.
- Une disponibilité peut être disponible, réservée ou annulée.
- Une disponibilité réservée ne doit plus être proposée à un autre patient.

## Règles liées aux rendez-vous

- Un rendez-vous est réservé par un patient.
- Un rendez-vous concerne un seul praticien.
- Un rendez-vous utilise une seule disponibilité.
- Un patient peut avoir plusieurs rendez-vous.
- Un praticien peut avoir plusieurs rendez-vous.
- Un rendez-vous peut avoir le statut confirmé, annulé ou terminé.

## Règles liées à l’administration

- L’administrateur peut gérer les praticiens.
- L’administrateur peut gérer les spécialités.
- L’administrateur peut gérer les disponibilités.
- L’administrateur peut consulter et gérer les rendez-vous.

## Règles de sécurité prévues plus tard

- Les mots de passe devront être hashés.
- Les accès devront être limités selon le rôle.
- Un patient ne devra pas pouvoir accéder aux rendez-vous d’un autre patient.
- Un praticien ne devra consulter que son propre planning.
- Les formulaires devront être contrôlés avant l’enregistrement.

## Limites

Ces règles sont adaptées à une première version simple.

L’application ne gère pas de données médicales réelles.