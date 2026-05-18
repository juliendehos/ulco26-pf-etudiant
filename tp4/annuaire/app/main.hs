import System.IO ( hFlush, stdout )

type Contact = (String, String)     -- (name, email)
type Annuaire = [Contact]

mkBase :: Annuaire
mkBase = []

-- cherche un contact dans l'annuaire, à partir de son nom
-- search :: String -> Annuaire -> Maybe Contact
-- TODO

-- ajoute le nouveau contact, si le nom n'est pas déjà présent dans l'annuaire
-- insert :: Contact -> Annuaire -> Annuaire
-- TODO

-- "supprime" un contact de l'annuaire, à partir de son nom
-- remove :: String -> Annuaire -> Annuaire
-- TODO

menuUsage :: IO ()
menuUsage = do
    putStrLn "commands:"
    putStrLn "  quit"
    putStrLn "  print"
    putStrLn "  insert <name> <email>"
    putStrLn "  remove <name>"
    putStrLn "  search <name>"

loop :: Annuaire -> IO ()
loop annuaire = do
    putStr "> "
    hFlush stdout
    -- TODO

main :: IO ()
main = loop mkBase

