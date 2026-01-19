# MODE D’EMPLOI — TEMPLATE « BOUDOIR MODERNE » (Clubs libertins)

Ce document est **le guide unique à lire au début de chaque nouveau projet**.
Il explique **quoi modifier**, **comment dupliquer**, **comment versionner sur GitHub**, et **comment déployer sur Vercel**, sans avoir à réfléchir à nouveau.

---

## 🎯 Objectif du template

Créer rapidement des **maquettes premium, modernes et rassurantes** pour des clubs libertins, afin de :
- montrer le potentiel d’une refonte
- provoquer un déclic visuel et émotionnel
- lancer une discussion commerciale

Le template est conçu pour être :
- duplicable
- cohérent
- élégant (boudoir moderne)
- pédagogique (explique les choix visuels)

---

## 🧠 Principe fondamental (À NE JAMAIS OUBLIER)

👉 **Un seul fichier est modifié pour chaque nouveau club** :

```
src/config/siteConfig.ts
```

Tout le reste du site **s’adapte automatiquement**.

---

## 1️⃣ Créer une nouvelle maquette pour un club

### Étape 1 — Dupliquer le projet

Option recommandée :
- dupliquer le dossier du projet existant
- renommer le dossier avec le nom du club

Exemple :
```
club-template  →  club-eden
```

---

### Étape 2 — Modifier la configuration du club

Ouvrir :
```
src/config/siteConfig.ts
```

Modifier uniquement les champs nécessaires :

```ts
clubName: "Club Eden",
city: "Lyon",

keywords: ["boudoir", "élégant", "chaleureux", "discret"],
```

👉 **Ne jamais modifier les composants ou les pages** sauf cas exceptionnel.

---

### Étape 3 — Vérification locale

Dans le terminal, à la racine du projet :

```bash
npm run dev
```

Ouvrir :
```
http://localhost:5173
```

Vérifier :
- le nom du club
- l’ambiance générale
- la cohérence des textes

---

## 2️⃣ Gestion Git — Sauvegarde & versioning

### Étape 1 — Initialiser Git (si pas déjà fait)

```bash
git init
```

---

### Étape 2 — Vérifier les fichiers suivis

```bash
git status
```

Tu dois voir les fichiers modifiés (`siteConfig.ts` principalement).

---

### Étape 3 — Ajouter les fichiers

```bash
git add .
```

---

### Étape 4 — Commit clair et lisible

Toujours utiliser un message simple et explicite :

```bash
git commit -m "Maquette boudoir — Club Eden"
```

---

### Étape 5 — Créer le dépôt GitHub

1. Aller sur https://github.com
2. Créer un **nouveau repository** (public ou privé)
3. Copier l’URL du repo

Puis dans le terminal :

```bash
git branch -M main
git remote add origin https://github.com/TON_USER/club-eden.git
git push -u origin main
```

---

## 3️⃣ Déploiement sur Vercel

### Étape 1 — Créer un compte

👉 https://vercel.com

Se connecter avec GitHub.

---

### Étape 2 — Nouveau projet

1. Cliquer sur **New Project**
2. Sélectionner le repository GitHub du club

---

### Étape 3 — Configuration Vercel

Vercel détecte automatiquement Vite + React.

Vérifier uniquement :
- **Framework** : Vite
- **Build Command** : `npm run build`
- **Output Directory** : `dist`

Puis cliquer sur **Deploy**.

---

### Étape 4 — Lien final

Après quelques secondes, Vercel fournit une URL du type :

```
https://club-eden.vercel.app
```

👉 C’est ce lien qui sera envoyé au propriétaire du club.

---

## 4️⃣ Bonnes pratiques de prospection

- Toujours préciser que la maquette est **illustrative et non contractuelle**
- Ne jamais critiquer frontalement le site existant
- Mettre en avant :
  - modernité
  - lisibilité
  - image premium
  - confiance du visiteur

---

## 5️⃣ Checklist rapide (avant envoi)

✔ Nom du club correct
✔ Aucune mention d’un autre établissement
✔ Design cohérent
✔ Texte fluide
✔ Lien Vercel fonctionnel

---

## 🧠 Rappel stratégique

Ce que tu vends **n’est pas un site**.

Tu vends :
- une vision
- une montée en gamme
- une meilleure perception client
- une expérience plus rassurante

Le template est là pour **rendre visible ce qu’ils n’arrivent pas à imaginer**.

---

📌 **Ce fichier est ton point de départ à chaque nouveau club.**
Lis-le, suis-le, et avance sans te reposer de questions inutiles.

