
module Main where

import System.Environment ( getArgs )

countLines :: String -> Int
countLines str = length (lines str)

countWords :: String -> Int
countWords str = length (words str)

countChars :: String -> Int
countChars str = length str

countChars' :: String -> Int
countChars' str = length (concat (words str))

main :: IO ()
main = do
    args <- getArgs
    case args of
        [filename] -> do
            contents <- readFile filename
            putStrLn ("lines: "  ++ show (countLines contents))
            putStrLn ("words: " ++ show (countWords contents))
            putStrLn ("chars: " ++ show (countChars contents))
            putStrLn ("non-whitespace chars: " ++ show (countChars' contents))
        _ -> putStrLn "usage: <file>"

