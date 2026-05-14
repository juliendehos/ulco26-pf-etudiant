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

splitMessage :: Int -> String -> [String]
splitMessage size str = 
    if null x then xs else xs ++ [x]
    where
        (xs, x, _) = foldl' f ([], [], 0) (words str)
        f (ys, y, n) w = 
            let nw = length w
                y' = if null y then w else y ++ " " ++ w
            in if n + nw < size
                then (ys, y', n + nw + 1)
                else (ys ++ [y], w, nw)

testSplitMessage :: String
testSplitMessage =
    "A profunctor is a bifunctor where the first argument is contravariant and the second argument is covariant."

-- >>> splitMessage 25 testSplitMessage
-- ["A profunctor is a","bifunctor where the first","argument is contravariant","and the second argument","is covariant."]

-- TODO
fmtMessage :: String -> String
fmtMessage str = str

main :: IO ()
main = do
    putStrLn (fmtMessage "TODO")
    putStrLn cow

-- cabal run cowsay-multi -- "A profunctor is a bifunctor where the first argument is contravariant and the second argument is covariant."

