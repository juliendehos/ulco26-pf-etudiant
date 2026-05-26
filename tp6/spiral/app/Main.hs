module Main where

import Data.List ( transpose )

type Line = [Char]

type Matrix = [Line]

-- Type des fonctions qui récupèrent les coefficients pour l'étape courante.
type GetLine = Matrix -> Line

-- Type des fonctions qui récupèrent la matrice restante pour l'étape courante.
type GetMatrix = Matrix -> Matrix

-- Liste de fonctions permettant de réaliser le parcours en spiral.
--
-- Cette liste se répète à l'infini, pour pouvoir traiter 
-- des matrices aussi grandes que l'on veut.
-- TODO spiralOps :: [(GetLine, GetMatrix)]

-- Réalise le parcours donné sur la matrice donnée.
--
-- Les fonctions passées en argument définissent le parcours à réaliser.
-- TODO process :: [(GetLine, GetMatrix)] -> Matrix -> [Char]

-- Quelques matrices de test.
testMatrix44, testMatrix55, testMatrix64 :: Matrix
testMatrix44 = ["abcd","efgh","ijkl","mnop"]
testMatrix55 = ["abcde","fghij","klmno","pqrst", "uvwxy"]
testMatrix64 = ["abcdef","ghijkl","mnopqr","stuvwx"]

-- Programme principal.
main :: IO ()
main = do
    let mat = testMatrix64

    putStrLn "\ninitial matrix:"
    mapM_ putStrLn mat

    putStrLn "\nspiral:"
    -- TODO

    putStrLn "\nfat spiral:"
    -- TODO

    putStrLn "\nfirst last:"
    -- TODO

-- Parcours en spiral "d'épaisseur 2".
-- TODO fatSpiralOps :: [(GetLine, GetMatrix)]

-- Parcours "première ligne, dernière ligne, etc".
-- TODO firstLastOps :: [(GetLine, GetMatrix)]

