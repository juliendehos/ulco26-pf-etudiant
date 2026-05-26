
import Data.Set qualified as S
import System.Environment
import System.Random

-- Liste des mots autorisés pour le jeu.
type Dict = [String]

-- Nombre de tentatives possibles pour trouver un mot.
nbTries :: Int
nbTries = 6

-- Sélectionne un mot aléatoirement dans le dictionnaire.
-- TODO randomWord :: Dict -> IO String

-- Boucle de jeu pour trouver un mot sélectionné.
-- TODO wordLoop :: Dict -> String -> Int -> S.Set Char -> S.Set Char -> IO ()

-- Boucle principale.
--
-- Sélectionne un mot, lance la boucle pour trouver le mot, recommence.
-- TODO mainLoop :: Dict -> IO ()

-- Programme principal.
main :: IO ()
main = do
  -- TODO
  putStrLn "usage: <dict filename>"


