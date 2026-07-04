
---

## `environnement-technique.md`

```md
# Environnement technique — DoctoRDV

## Objectif

Ce document présente les choix techniques prévus pour le projet DoctoRDV.

L’objectif est de préparer le développement de l’application avant de commencer le code.

## Technologies prévues

| Technologie | Rôle prévu |
|---|---|
| PHP | Développement de l’application web |
| MySQL | Stockage des utilisateurs, praticiens, créneaux et rendez-vous |
| HTML / CSS | Structure et présentation des pages |
| Bootstrap | Interface simple et responsive |
| JavaScript | Interactions simples si nécessaire |
| Git | Suivi des versions du projet |
| GitHub | Sauvegarde du projet et présentation au jury |
| Laragon | Environnement local PHP/MySQL |

## Pourquoi PHP/MySQL ?

PHP et MySQL sont adaptés à un projet BTS SIO SLAM car ils permettent de créer une application web simple avec une base de données relationnelle.

Le projet DoctoRDV doit manipuler plusieurs types de données :

- utilisateurs ;
- rôles ;
- praticiens ;
- spécialités ;
- créneaux ;
- rendez-vous.

## Pourquoi Bootstrap ?

Bootstrap permet de créer rapidement une interface propre et lisible.

Cela évite de passer trop de temps sur le design et permet de se concentrer sur les fonctionnalités principales.

## Pourquoi ne pas utiliser un framework complexe ?

Pour la première version, aucun framework complexe n’est prévu.

L’objectif est de garder un projet simple, compréhensible et maîtrisable pour l’épreuve E6 SLAM.

Une architecture simple en PHP permettra de présenter clairement le fonctionnement au jury.

## Organisation technique prévue

Le projet sera organisé progressivement avec :

- des fichiers de documentation Markdown ;
- une future base de données MySQL ;
- des pages PHP ;
- des formulaires ;
- des traitements ;
- des tests ;
- des captures d’écran comme preuves BTS.

## Limite de cette semaine

Cette semaine ne contient pas encore de développement fonctionnel.

Elle sert uniquement à préparer l’environnement technique et les prérequis du projet.