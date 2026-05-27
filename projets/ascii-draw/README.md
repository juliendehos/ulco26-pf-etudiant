
# ascii-draw

## description

Programme de dessin en mode texte.

Utilisation :
    - `Enter` : active/désactive le dessin
    - `Esc` : quitte
    - flêches : déplace le curseur de dessin
    - autre touche : sélectionne le caractère de dessin

```
--------------------------------
|                              |
|          XXXXXXXXX           |
|          X       X           |
|          X       X           |
|          X       X           |
|          X       X           |
|          XXXXXXXXX           |
|              |               |
|              |               |
|              |               |
|      O   ----|----           |
|              |               |
|              |               |
|              |               |
|             / \              |
|            /   \             |
|           /     \            |
|          /       \           |
|                              |
|                              |
--------------------------------
drawing: n
brush: '-'
```

## planning

- [ ] implémenter `mkImage` et `printImage` (tester avec le `main`)
- [ ] implémenter une 1re version de `run` (flêches + `Enter`)
- [ ] terminer `run` (`Esc`, sélection du caractère de dessin) 
- [ ] terminer l'implementation du `main` (gestion des arguments) 
- [ ] bonus : ouvrir/enregistrer l'image depuis/vers un fichier texte

