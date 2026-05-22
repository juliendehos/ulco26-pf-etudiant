{-# LANGUAGE MultilineStrings #-}

module Main where

import Control.Monad ( forM_ )
import Data.Vector.Unboxed qualified as V
import System.Environment (getArgs)

type Size = (Int, Int)      -- nombre de lignes/colonnes (ni,  nj)
type Position = (Int, Int)  -- position ligne/colonne (i, j)

-- Convertit une liste en une paire.
--
-- On suppose que la liste contient 2 éléments
list2pair :: [a] -> (a, a)
list2pair [x, y] = (x, y)
list2pair _ = error "list2pair failed"

-- >>> list2pair [1,2]
-- >>> list2pair [1]
-- (1,2)
-- list2pair failed

-- Données de test.
testInput :: String
testInput = 
    """
    4 6
    
    1 2
    3 4
    """

-- test "à la main", pour implémenter parsePairs
-- >>> f = lines
-- >>> f testInput

-- Récupère les paires d'entiers à partir de données textuelles.
--
-- Format des données : chaque ligne de texte est vide ou contient 2 entiers.
-- TODO parsePairs :: String -> [(Int, Int)]

-- >>> parsePairs testInput

-- Récupère les données complètes à partir de données textuelles.
--
-- Format : la première ligne non-vide donne la taille de l'image,
-- les suivantes donnent les positions à placer dans l'image.
-- TODO parseInput :: String -> (Size, [Position])

-- >>> parseInput testInput
-- >>> parseInput "1 2\n3"

-- Convertit une position 2D dans une image en indice 1D dans un vector.
ij2k :: Size -> Position -> Int
ij2k (_, nj) (i, j) = i*nj + j

-- >>> ij2k (10, 20) (0, 3)
-- >>> ij2k (10, 20) (1, 4)
-- 3
-- 24

-- Construit une image (un vector) de la taille demandée
-- et avec les positions demandées.
-- TODO mkImage :: Size -> [Position] -> V.Vector Char

-- >>> mkImage (4,6) [(1,2),(3,4)]

-- Affiche une image.
-- TODO printImage :: V.Vector Char -> Size -> IO ()

-- Programme principal.
--
-- Lit le fichier demandé et construit/affiche son image.
--
-- Exemple d'exécution :
-- cabal run draw-positions -- data/test1.txt
main :: IO ()
main = do
    args <- getArgs
    case args of
        [filename] -> do
            putStrLn "not implemented"  -- TODO
        _ -> putStrLn "usage: <filename>"
    

