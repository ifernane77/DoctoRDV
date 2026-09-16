# Maquettes — DoctoRDV

## Objectif

Les maquettes décrivent les écrans attendus de la version 1 avant leur réalisation en HTML, CSS et PHP. Elles servent de fil conducteur pour le développement et les tests ; leur apparence pourra évoluer, mais les fonctions décrites ci-dessous doivent rester cohérentes avec l’analyse fonctionnelle.

## Parcours principal

1. Le visiteur arrive sur la liste des praticiens.
2. Il filtre éventuellement par spécialité et ouvre une fiche praticien.
3. Il consulte les créneaux disponibles.
4. Il se connecte comme patient fictif pour réserver.
5. Il retrouve le rendez-vous dans l’espace « Mes rendez-vous ».
6. Il peut l’annuler depuis cet espace.

## Écran 1 — Liste des praticiens

**But :** permettre au visiteur de trouver un praticien.

Éléments attendus :

- en-tête avec le nom DoctoRDV et le lien de connexion ;
- filtre par spécialité ;
- carte par praticien : nom fictif, spécialité, courte présentation et bouton « Voir les disponibilités » ;
- absence de donnée médicale ou personnelle réelle.

## Écran 2 — Fiche praticien et disponibilités

**But :** afficher les informations utiles et les créneaux réservables d’un praticien.

Éléments attendus :

- nom fictif du praticien et sa spécialité ;
- description courte ;
- liste ou calendrier de créneaux disponibles ;
- bouton « Réserver » ;
- message invitant un visiteur non connecté à se connecter avant de réserver.

## Écran 3 — Connexion

**But :** permettre l’authentification avant l’accès aux espaces privés.

Éléments attendus :

- champ e-mail ;
- champ mot de passe ;
- message d’erreur générique en cas d’échec ;
- redirection adaptée au rôle après connexion ;
- lien de retour vers l’accueil.

## Écran 4 — Espace patient : mes rendez-vous

**But :** permettre au patient de consulter et annuler ses rendez-vous.

Éléments attendus :

- tableau ou cartes des rendez-vous du patient connecté ;
- praticien, spécialité, date, heure et statut ;
- bouton « Annuler » uniquement sur les rendez-vous annulables ;
- message de confirmation après une annulation ;
- aucune information concernant les rendez-vous d’un autre patient.

## Écran 5 — Espace praticien : mon planning

**But :** permettre au praticien de consulter son planning et gérer ses créneaux.

Éléments attendus :

- liste chronologique de ses rendez-vous ;
- affichage de ses créneaux, disponibles ou réservés ;
- formulaire simple d’ajout ou de modification d’un de ses créneaux ;
- aucune possibilité d’accéder au planning d’un autre praticien.

## Écran 6 — Administration

**But :** permettre à l’administrateur de maintenir les données principales.

Éléments attendus :

- accès aux listes de praticiens, spécialités, créneaux et rendez-vous ;
- formulaires d’ajout, modification ou désactivation selon les données ;
- vue globale des rendez-vous ;
- accès réservé au rôle administrateur.

## Vérifications à prévoir lors de l’intégration

- les boutons et liens correspondent aux parcours définis ;
- un visiteur ne peut pas réserver directement ;
- le patient ne voit que ses données ;
- le praticien ne voit que son planning ;
- l’administrateur accède aux pages de gestion ;
- l’interface reste lisible sur ordinateur et mobile.
