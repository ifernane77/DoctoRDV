# Diagramme des cas d’utilisation — DoctoRDV

## Objectif

Ce document présente un diagramme simplifié des cas d’utilisation de l’application DoctoRDV.

## Diagramme simplifié

```mermaid
flowchart LR
    Visiteur[Visiteur]
    Patient[Patient fictif]
    Praticien[Praticien]
    Admin[Administrateur]

    UC1[Rechercher un praticien]
    UC2[Voir les disponibilités]
    UC3[Réserver un rendez-vous]
    UC4[Annuler un rendez-vous]
    UC5[Consulter son planning]
    UC6[Gérer les praticiens]
    UC7[Gérer les créneaux]
    UC8[Gérer les rendez-vous]

    Visiteur --> UC1
    Visiteur --> UC2

    Patient --> UC1
    Patient --> UC2
    Patient --> UC3
    Patient --> UC4

    Praticien --> UC5

    Admin --> UC6
    Admin --> UC7
    Admin --> UC8
    Admin --> UC4
```

## Lecture du diagramme

Le visiteur peut rechercher un praticien et consulter certaines disponibilités.

Le patient fictif peut rechercher un praticien, voir les disponibilités, réserver et annuler un rendez-vous.

Le praticien peut consulter son planning.

L’administrateur peut gérer les praticiens, les créneaux et les rendez-vous.

## Justification

Le diagramme reste volontairement simple afin de garder un périmètre réaliste pour le BTS SIO SLAM.

## Lien avec E6 SLAM

Ce diagramme prépare la conception fonctionnelle de la solution applicative.