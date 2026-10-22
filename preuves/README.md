# Preuves — DoctoRDV

## Objectif

Ce dossier sert uniquement à conserver les preuves qui apportent une valeur réelle pour le BTS SIO SLAM.

Une preuve n'est pas créée automatiquement à chaque semaine. Le code, l'historique Git, le backlog, les tests et la démonstration de l'application constituent déjà des preuves lorsqu'ils montrent clairement le travail réalisé.

## Règle de conservation

Ordre de valeur des preuves :

1. application fonctionnelle et démontrable ;
2. code source et historique Git ;
3. tests ou résultat de recette ;
4. backlog et suivi du projet ;
5. capture d'écran seulement si elle apporte une information utile au portfolio ou au dossier.

À éviter :

- créer un fichier uniquement pour dire qu'une semaine est terminée ;
- capturer `git status` ou du code déjà disponible sur GitHub ;
- créer un rapport par semaine ;
- accumuler des captures qui montrent la même chose ;
- considérer une simple maquette ou une donnée statique comme une compétence complètement validée.

Les anciens dossiers `semaine-01` à `semaine-09` sont des placeholders historiques. Il n'est pas nécessaire de poursuivre cette organisation avec un dossier par semaine.

---

## Situation actuelle — S1 à S17

Les travaux réalisés jusqu'à la semaine 17 sont déjà principalement prouvés par :

- le dépôt Git et les commits successifs ;
- le `README.md` ;
- le `backlog.md` ;
- les documents de cadrage, d'analyse et de conception ;
- les maquettes ;
- les fichiers HTML/CSS ;
- les interfaces de connexion, praticiens et rendez-vous ;
- le responsive et CSS Grid ;
- le commit de mise en place du responsive.

Il n'est pas nécessaire de recréer rétroactivement des captures pour chaque ancienne semaine.

### S17 — Responsive / CSS Grid

Preuves principales :

- code HTML/CSS actuel ;
- commit Git de l'évolution responsive ;
- démonstration en direct sur écran ordinateur et mobile.

Capture desktop/mobile : **optionnelle**, à conserver uniquement si elle est utilisée dans le portfolio ou le dossier final.

Compétences concernées : conception et développement de l'interface, première maintenance évolutive de l'application. Cela ne valide pas encore la gestion des données.

---

## Feuille de route des preuves — S18 à S30

| Semaine | Travail à démontrer sur DoctoRDV | Preuve à conserver | Priorité |
|---|---|---|---|
| S18 | Prise en compte des données personnelles et règles de conservation | Mise à jour d'une note RGPD existante ou document court réellement utile | Importante |
| S19 | Évolution de la conception si l'architecture ou les échanges changent | Diagramme ou document de conception **uniquement si le projet change réellement** | Selon besoin |
| S20 | Modèle de données et premières requêtes réellement testées | MCD/MLD à jour + script SQL + quelques résultats de requêtes | **Forte preuve E6 — gérer les données** |
| S21 | Installation et configuration reproductibles | README / procédure d'installation mise à jour + comptes de test fictifs | Importante |
| S22 | Recette du parcours patient, praticien et administrateur | Cahier ou tableau de tests avec résultat attendu / obtenu | **Forte preuve E6** |
| S23 | Correction d'un vrai bug rencontré dans le projet | Description courte du bug + commit correctif + test après correction | **Forte preuve maintenance corrective** |
| S24 | Une évolution réellement utile au projet | Commit de la fonctionnalité + test ; capture seulement si l'évolution est visuelle | **Forte preuve maintenance évolutive** |
| S25 | Nettoyage et stabilisation du code | Historique Git + documentation technique mise à jour si nécessaire | Pas de capture spécifique |
| S26 | Préparation de la démonstration E6 | Jeu de données fictif + comptes de test + scénario de démonstration | Importante |
| S27 | Version démontrable et portfolio | Release/tag Git si pertinent + README propre + lien portfolio | Importante |
| S28 | Répétition orale | Aucune preuve Git obligatoire ; conserver seulement le scénario oral final s'il est utile | Secondaire |
| S29 | Revue finale des compétences et des preuves | Vérifier que MCD, SQL, tests, maintenance et commits sont faciles à retrouver | Pas de nouveau fichier si tout existe |
| S30 | Stabilisation finale | Release finale + procédure d'installation + scénario de démonstration | **Indispensable** |

---

## Compléments sécurité — C1 à C6

Ces éléments sont à produire uniquement lorsque les fonctionnalités correspondantes existent réellement.

| Étape | Preuve utile |
|---|---|
| C1 — Contrôle des accès | Matrice rôles/droits à jour + tests montrant qu'un utilisateur ne peut pas accéder aux données d'un autre |
| C2 — Données personnelles | Note RGPD déjà existante mise à jour ; ne pas créer un doublon |
| C3 — Tests de sécurité | Petit compte rendu de tests pertinents : contrôle d'accès, XSS, injection ou validation des entrées selon les notions étudiées |
| C4 — Maintenance corrective | Bug réel + correction + test de non-régression |
| C5 — Maintenance évolutive | Évolution utile + commit + tests |
| C6 — Démonstration | Comptes de test, données fictives et scénario permettant de montrer les droits d'accès |

---

## Compléments D1 à D4

Ces étapes sont **bonus**. Elles ne doivent jamais retarder DoctoRDV ou Light of Knowledge.

- D1 : comparaison technique courte uniquement si une technologie doit réellement être choisie ;
- D2 : prototype technique seulement s'il sert au projet ;
- D3 : améliorer l'installation uniquement si elle n'est pas déjà reproductible ;
- D4 : finaliser le modèle de données seulement si les évolutions du code le nécessitent.

Aucune preuve bonus ne doit être produite pour remplir artificiellement le dépôt.

---

## Preuves fortes à avoir avant l'épreuve

À la fin du projet, DoctoRDV devrait permettre de retrouver facilement :

- cadrage et besoin ;
- backlog avec suivi réel ;
- maquettes utiles ;
- MCD / MLD finalisés ;
- script SQL et jeu de données fictives ;
- code source versionné ;
- historique de commits compréhensible ;
- tests fonctionnels ;
- au moins une maintenance corrective réelle ;
- au moins une évolution réelle ;
- procédure d'installation ;
- comptes et données de démonstration ;
- scénario de démonstration ;
- quelques captures réellement utilisées dans le portfolio, si nécessaire.

## Principe final

Une compétence n'est considérée comme démontrée que lorsque le projet contient une réalisation réelle et vérifiable.

Le dossier `preuves/` n'a donc pas pour objectif d'accumuler des fichiers : il sert à faciliter l'accès aux quelques éléments que le code, Git, les tests ou le portfolio ne permettent pas de montrer aussi clairement.
