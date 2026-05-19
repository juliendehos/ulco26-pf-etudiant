
-- import Cesar ( chiffrerCesar, casserCesar )

main :: IO ()
main = do
    str <- getLine
    putStrLn $ "texte chiffré : " ++ str
    -- TODO
    -- let k = casserCesar str
    --     str' = chiffrerCesar k str
    -- putStrLn $ "texte déchiffré : " ++ str'
    -- putStrLn $ "clé : " ++ show k

-- echo "sh cpjavpyl lza iypsshual, s'ljolj lza tha" | cabal run cesar

