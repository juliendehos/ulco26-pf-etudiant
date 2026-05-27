
import Control.Monad ( forM_ )
import Data.Vector.Unboxed qualified as V
import System.Environment (getArgs)
import System.IO
import Text.Read ( readMaybe )

import MyIO

-- Taille de la zone de dessin.
type Size = (Int, Int)

-- Position dans la zone de dessin.
type Position = (Int, Int)

-- Convertit une position dans la zone de dessin en son indice dans le vector.
ij2k :: Size -> Position -> Int
ij2k (_, nj) (i, j) = i*nj + j

-- Génère une image vide (i.e. un vector rempli de ' ').
-- TODO mkImage :: Size -> V.Vector Char

-- Affiche une image, avec une bordure.
-- TODO printImage :: V.Vector Char -> Size -> Position -> IO ()

-- Boucle principale.
--
-- Voir le module MyIO pour nettoyer l'écran et gérer le clavier.
-- TODO run :: V.Vector Char -> Size -> Position -> Bool -> Char -> IO ()

-- Programme principal.
--
-- La taille de l'image (ni, nj) est donnée en argument.
main :: IO ()
main = do
    hSetBuffering stdin NoBuffering
    hSetEcho stdin False
    -- TODO
    putStrLn "usage: <ni> <nj>"

