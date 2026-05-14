{-# LANGUAGE QuasiQuotes #-}

module Main where

import Data.String.QQ ( s )
import System.Environment ( getArgs )

cow :: String
cow = 
    [s|
    \   ^__^
     \  (oo)\_______
        (__)\       )\/\
            ||----w |
            ||     ||
    |]

-- TODO
fmtMessage :: String -> String
fmtMessage str = str

main :: IO ()
main = do
    putStrLn (fmtMessage "TODO")
    putStrLn cow

-- cabal run cowsay -- "Hello World!"

