
# maze

## description

Petit jeu de labyrinthe en mode texte (navigation avec les flêches du clavier,
`Esc` pour quitter). Le joueur est représenté par le caractère `O`, les sorties
par `?`.

```
++++++++++++
+   O      +
+++  ++ ++ +
+ ++ ++ ++ +
+  + +  ++++
++   + +++?+
+++ ++   + +
++     +   +
+  +++++++++
+         ?+
++++++++++++
```

## planning

- [ ] implémenter `parseInput` (tester avec le `main`)
- [ ] implémenter `printMaze` (tester avec le `main`)
- [ ] implémenter une première version de `run` : affiche le labyrinthe et gère la touche `Esc`
- [ ] terminer `run` : gère les déplacement, détecte les collisions et les victoires
- [ ] gérer des niveaux : quand on a terminé un labyrinthe, on passe au suivant dans le dossier

