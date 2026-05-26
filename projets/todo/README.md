
# todo

## description

Permet de gérer une liste de taches à faire (afficher, ajouter/supprimer une
tache, indiquer une tache "faite" ou "à faire").

Exemple, d'exécution :

```
$ cabal run todo -- tasks.txt 

> lkj;lsa
help:
  print
  print todo
  print done
  add <string>
  do <id>
  undo <id>
  del <id>
  quit

> add foo bar

> print
[x] 13. repeindre la girafe
[ ] 37. brosser la piscine
[ ] 42. foo bar

> quit
```

## planning

- [ ] implémenter `fmtTask` et l'affichage du modèle dans la fonction `run`
- [ ] implémenter le `main` (arguments, lecture du fichier, lancement de la boucle principale, sauvegarde du fichier) 
- [ ] implémenter un menu gérant `print`, `quit` et le message d'aide
- [ ] implémenter `print done` et `print todo`
- [ ] implémenter `add` et `del`
- [ ] implémenter `do` et `undo`

