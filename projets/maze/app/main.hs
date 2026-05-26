
import Control.Monad ( forM_ )
import Data.Vector.Unboxed qualified as V
import System.Environment (getArgs)
import System.IO

import MyIO

-- Taille du labyrinthe.
type Size = (Int, Int)

-- Position courante du joueur.
type Position = (Int, Int)

-- Données du labyrinthe.
type Maze = V.Vector Char

-- Convertit une position 2D en indice dans le vector.
ij2k :: Size -> Position -> Int
ij2k (_, nj) (i, j) = i*nj + j

-- Récupère les informations décrivant un labyrinthe à partir de données
-- d'entrée.
--
-- La première ligne contient la taille du labyrinthe et la position initiale
-- du joueur. Le reste contient les données du labyrinthe.
--
-- Exemple de données d'entrée :
-- 11 12 1 1
-- ++++++++++++
-- +          +
-- +++  ++ ++ +
-- + ++ ++ ++ +
-- +  + +  ++++
-- ++   + +++?+
-- +++ ++   + +
-- ++     +   +
-- +  +++++++++
-- +         ?+
-- ++++++++++++
-- TODO parseInput :: String -> (Size, Position, Maze)

-- Affiche un labyrinthe, avec le joueur.
--
-- Nettoie l'écran avant d'afficher (voir le module MyIO).
--
-- Par exemple, avec les données d'entrées précédentes :
-- ++++++++++++
-- +O         +
-- +++  ++ ++ +
-- + ++ ++ ++ +
-- +  + +  ++++
-- ++   + +++?+
-- +++ ++   + +
-- ++     +   +
-- +  +++++++++
-- +         ?+
-- ++++++++++++
-- TODO printMaze :: Size -> Position -> Maze -> IO ()

-- Boucle de jeu pour un labyrinthe donnée.
--
-- On peut déplacer le joueur avec les flêches du clavier et quitter avec la
-- touche Esc (voir le module MyIO).
-- TODO run :: Size -> Position -> Maze -> Position -> IO ()

-- Programme principal.
--
-- Version 1 : on passe le fichier de labyrinthe en argument.
--
-- Version 2 : on passe le dossier en argument et le programme déroule les
-- labyrinthes successivement.
main :: IO ()
main = do
    hSetBuffering stdin NoBuffering
    contents <- readFile "data/maze1.txt"
    print contents

