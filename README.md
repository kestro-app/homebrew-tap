# Kestro — dépôt Homebrew

La boîte à outils du développeur, dans la barre de menus. <https://kestro.fr>

```sh
brew install --cask kestro-app/tap/kestro
```

Ou en deux temps :

```sh
brew tap kestro-app/tap
brew install --cask kestro
```

Kestro se met à jour tout seul : `brew upgrade` ne le retéléchargera pas.
Pour le retirer, `brew uninstall --cask kestro` — en ajoutant `--zap` pour
effacer aussi la configuration et la licence enregistrée sur ce poste.

Ce dépôt ne contient que la recette d'installation. L'application est
téléchargée depuis `storage.googleapis.com/kestro-updates`, signée et
notarisée par Apple.

---

# Kestro — Homebrew tap

Developer toolbox that lives in the menu bar. <https://kestro.fr>

```sh
brew install --cask kestro-app/tap/kestro
```

This repository only holds the install recipe. The app itself is downloaded
from `storage.googleapis.com/kestro-updates`, signed and notarized by Apple.
