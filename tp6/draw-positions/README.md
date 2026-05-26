
# draw-positions

## description

Permet de placer des positions 2D sur une carte, à partir des données d'un
fichier (taille de carte + positions).

Par exemple, les données :

```
10 30

1 2
5 20
3 10
```

donnent le résultat :

```
..............................
..X...........................
..............................
..........X...................
..............................
....................X.........
..............................
..............................
..............................
..............................
``` 

## planning

- [ ] implémenter `parsePairs` (tester avec l'interpréteur en-ligne)
- [ ] implémenter `parseInput` (idem)
- [ ] implémenter `mkImage` (idem)
- [ ] implémenter `printImage` et le `main`

