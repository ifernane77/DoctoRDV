# Architecture — DoctoRDV

## Objectif

Ce document présente l’organisation technique prévue pour l’application DoctoRDV.

L’objectif est de conserver une architecture simple, claire et adaptée au niveau BTS SIO SLAM.

## Technologies utilisées

- PHP ;
- MySQL ;
- HTML ;
- CSS ;
- Bootstrap ;
- JavaScript simple ;
- Git et GitHub ;
- XAMPP ou Laragon pour l’environnement local.

## Organisation générale

L’application suit une organisation proche du modèle MVC :

```text
public/
src/
├── controllers/
├── models/
└── views/
database/
tests/