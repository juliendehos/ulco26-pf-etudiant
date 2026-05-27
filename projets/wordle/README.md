
# wordle

## description

Une implémentation du jeu [wordle](https://fr.wikipedia.org/wiki/Wordle).

```
$ cabal run wordle -- data/dict.txt 

************
** wordle **
************

......

bateau
..--..
ok: et
ko: abu
nb: 5

foobar
mot inconnu

foo
taille invalide

poulet
....et
ok: et
ko: ablopu
nb: 4

secret

gagné

************
** wordle **
************

.......
```


## planning

- [ ] implémenter `randomWord`
- [ ] 1re implémentation de `wordLoop` : saisir un mot, vérifier si trouvé, recommencer si coups restants
- [ ] `wordLoop` : vérifier le mot saisi (taille, présent dans le dictionnaire) 
- [ ] `wordLoop` : afficher les infos sur la saisie (caractères ok/ko...)
- [ ] terminer le `main` (dictionnaire en argument...)


