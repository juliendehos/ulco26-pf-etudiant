{-# LANGUAGE MultilineStrings #-}

import Text.Read
import System.Environment
import System.IO

-- Décrit une tache : identifiant, faite/a faire, description.
type Task = (Int, Bool, String)

-- Données l'application : prochain identifiant, liste des taches.
type Model = (Int, [Task])

-- Formate une tache.
--
-- Exemple de tache faite :
-- [x] 42. foo bar
--
-- Exemple de tache à faire :
-- [ ] 24. bar foo
-- TODO fmtTask :: Task -> String

-- Message d'aide qui explique les commandes du menu.
help :: String
help =
    """
    help:
      print
      print todo
      print done
      add <string>
      do <id>
      undo <id>
      del <id>
      quit
    """

-- Boucle principale de l'application.
--
-- Implémente le menu.
-- Retourne le Model résultant des commandes de l'utilisateur.
run :: Model -> IO Model
run model@(nextId, tasks) = do
    -- TODO
    print model
    pure model

-- Programme principal.
--
-- Lit le fichier initial, déroule le menu, puis enregistre le résultat dans le
-- fichier.
main :: IO ()
main = do
    -- TODO
    run (42, [(13, True, "repeindre la girafe"), (37, False, "brosser la piscine")])
    pure ()

