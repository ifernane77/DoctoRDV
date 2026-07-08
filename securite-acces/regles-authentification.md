# Règles d’authentification prévues — DoctoRDV

## Objectif

Ce document prépare les règles de connexion prévues pour DoctoRDV.

À cette étape, l’authentification n’est pas encore développée.

Le but est de préparer les règles avant de coder la connexion plus tard.

---

## Utilisateurs concernés

L’application devra gérer plusieurs types d’utilisateurs :

- patient ;
- praticien ;
- administrateur.

Le visiteur pourra consulter certaines informations sans être connecté.

---

## Connexion prévue

Pour se connecter, un utilisateur devra saisir :

- une adresse email ;
- un mot de passe.

Ces informations seront vérifiées plus tard dans la base de données.

---

## Mots de passe

Les mots de passe ne devront pas être stockés en clair.

Ils devront être hashés plus tard dans le développement PHP.

Je ne mets aucun vrai mot de passe dans GitHub.

---

## Accès après connexion

Après connexion, l’utilisateur sera redirigé selon son rôle.

Exemples :

| Rôle | Redirection prévue |
|---|---|
| Patient | Espace patient |
| Praticien | Espace praticien |
| Administrateur | Tableau d’administration |

---

## Sécurité prévue plus tard

Les éléments suivants seront développés plus tard :

- formulaire de connexion ;
- vérification de l’email ;
- vérification du mot de passe ;
- session utilisateur ;
- contrôle du rôle ;
- déconnexion ;
- protection des pages privées.

---

## Ce que je ne fais pas encore

Je ne code pas encore l’authentification.

Je prépare seulement les règles à appliquer plus tard.

Cette étape reste cohérente avec mon planning, car les leçons PHP et base de données seront étudiées plus loin.

---

## Remarque personnelle

Je préfère préparer les règles maintenant pour éviter de créer une connexion sans réfléchir aux droits des utilisateurs.