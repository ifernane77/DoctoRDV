# DoctoRDV

## Présentation

DoctoRDV est une application web fictive de gestion de rendez-vous pour une maison médicale fictive, **MediCentre Nova**. Elle est développée dans le cadre du BTS SIO, option SLAM, et constitue ma réalisation principale pour l’épreuve E6.

L’application centralise la consultation des disponibilités et la gestion des rendez-vous afin de limiter les erreurs de planning et les échanges téléphoniques inutiles.

> Toutes les données utilisées dans le projet sont fictives. L’application ne stocke aucun diagnostic, ordonnance, compte rendu médical, numéro de sécurité sociale ou autre donnée médicale sensible.

## Objectifs de la version 1

La première version doit permettre :

- à un visiteur de consulter les praticiens et leurs spécialités ;
- à un patient connecté de consulter les créneaux disponibles, réserver un rendez-vous, consulter ses rendez-vous et annuler l’un des siens ;
- à un praticien connecté de consulter uniquement son planning et de gérer ses créneaux ;
- à un administrateur de gérer les praticiens, les spécialités, les créneaux et les rendez-vous.

## Rôles

| Rôle | Accès principal |
|---|---|
| Visiteur | Consulte les praticiens et les créneaux disponibles. |
| Patient | Réserve, consulte et annule ses propres rendez-vous. |
| Praticien | Consulte son planning et gère ses créneaux. |
| Administrateur | Administre les données principales de l’application. |

## Périmètre exclu de la V1

- paiement en ligne ;
- notifications SMS ou e-mail automatiques ;
- téléconsultation ;
- synchronisation avec un agenda externe ;
- application mobile native (extension distincte éventuelle, hors V1) ;
- gestion de dossiers médicaux ou de données de santé réelles.

## Technologies prévues

- PHP 8 ;
- MySQL ;
- HTML, CSS et Bootstrap ;
- JavaScript simple si nécessaire ;
- Laragon pour l’environnement local ;
- Git et GitHub pour le versionnement.

Le choix d’une application PHP simple permet de travailler les fondamentaux attendus en BTS SIO SLAM : formulaires, sessions, contrôle des accès, requêtes SQL, architecture MVC légère, tests et documentation.

## Structure du dépôt

```text
DoctoRDV/
├── README.md
├── presentation-projet.md
├── analyse-fonctionnelle.md
├── architecture.md
├── backlog.md
├── installation.md
├── journal-de-bord.md
├── database/
│   ├── mcd-brouillon.md
│   ├── mld-brouillon.md
│   ├── dictionnaire-donnees.md
│   ├── regles-gestion.md
│   └── doctordv.sql                 # à créer lors de l’implémentation
├── securite-acces/
├── maquettes/
├── src/
├── public/
├── tests/
└── preuves/
```

## État du projet

La phase de cadrage, d’analyse fonctionnelle, de conception initiale des données et de préparation des accès est réalisée. Le prochain livrable est une **version MVP fonctionnelle** : base MySQL, code PHP, données fictives, tests et captures de fonctionnement.

## Éléments à produire pour le dossier E6

- code source versionné sur GitHub ;
- script SQL et jeu de données fictives ;
- MCD et MLD finalisés à partir de la base réellement créée ;
- cahier de tests avec résultats ;
- captures de l’application en fonctionnement ;
- documentation d’installation et d’utilisation mise à jour ;
- fiche descriptive et scénario de démonstration orale.

## Périmètre E6 et feuille de route (session 2027)

**Positionnement : réalisation E6 principale — développement applicatif web.** Le projet devra constituer une application démontrable, testée, documentée et susceptible d'évoluer pendant l'épreuve. Les fonctionnalités ci-dessous sont des objectifs, pas des fonctions déjà disponibles.

1. **MVP web prioritaire :** concevoir la base MySQL avec des données fictives, développer les écrans et traitements PHP essentiels (consultation des praticiens et créneaux, réservation et annulation par un patient), puis vérifier les règles d'accès.
2. **Consolidation :** enrichir la gestion des créneaux et l'administration selon les notions maîtrisées et le temps disponible ; rédiger tests, procédure d'installation, preuves et scénario de démonstration.
3. **Phase 2 prévue — client lourd secrétariat Java/JavaFX :** après stabilisation du MVP web et apprentissage de Java, développer un logiciel de bureau destiné à la secrétaire, utilisant une API PHP sécurisée et les mêmes données que le site. **Cette phase est planifiée, non réalisée.**

L'avancement doit rester synchronisé avec le code, les tests et les captures présents dans le dépôt. Les évolutions seront décidées au rythme des cours de BTS SIO SLAM suivis à distance via Studi.

## Extension E6 prévue — DoctoRDV Secrétariat

Le périmètre global comprend deux interfaces complémentaires : **V1 Web** (patients, praticiens, administration) puis **V2 client lourd Java/JavaFX** (secrétaire). La V2 doit permettre à une secrétaire authentifiée de consulter les plannings autorisés, rechercher un patient fictif, créer, déplacer et annuler un rendez-vous, et gérer les disponibilités dans le cadre de ses habilitations. Le client lourd échange avec une **API PHP sécurisée** ; il n'accède pas directement à la base MariaDB/MySQL. Les deux interfaces partagent les mêmes règles métier, notamment l'interdiction des doubles réservations.

**Ordre de réalisation :** SQL et PHP → MVP Web et contrôles d'accès → API et tests → Java/JavaFX après les cours correspondants → tests croisés et démonstration. Aucun client lourd ni API n'est développé à ce stade. Le développement mobile Flutter est réservé au projet distinct Light of Knowledge et n'est pas prévu pour DoctoRDV.
