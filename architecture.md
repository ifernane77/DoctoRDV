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

## Architecture cible V2 — client lourd secrétariat

```text
Navigateur Web (patients/praticiens)    Client lourd Java/JavaFX (secrétaire)
                 |                                  |
                 +---------- HTTPS / API PHP ------+
                                    |
                         Services métier PHP
                                    |
                           PDO / MariaDB
```

- **V1 :** interface Web HTML/CSS/PHP, parcours de réservation et annulation ; architecture MVC légère envisagée.
- **V2 :** application Java/JavaFX installée sur un poste de secrétariat ; écrans de planning, recherche de patient fictif, réservation, déplacement et annulation.
- **API PHP :** interface commune à prévoir pour les échanges JSON, l'authentification et l'autorisation des rôles. Le serveur applique les règles métier et protège les accès ; le client lourd ne se connecte jamais directement au SGBD.
- **Base commune :** MySQL/MariaDB, données entièrement fictives ; opérations atomiques et contraintes pour éviter les réservations concurrentes.
- **Sécurité et tests :** HTTPS en environnement distant, gestion de session ou jetons adaptée au client, validation côté serveur, journalisation, tests API et tests croisés Web/JavaFX.

**État réel :** cette architecture est une cible documentaire ; aucune API PHP ni application JavaFX opérationnelle n'est encore présente. Le développement suivra les cours SQL/PHP/API, puis Java/JavaFX. Le mobile Flutter est hors périmètre DoctoRDV.
