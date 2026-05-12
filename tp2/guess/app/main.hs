module Main where

import System.Random ( randomRIO )

runGame :: Int -> Int -> IO ()
runGame target nbTries = 
    if nbTries <= 0
    then putStrLn $ "You lose! It was " ++ show target 
    else do
        putStrLn $ "\nType a number (" ++ show nbTries ++ " tries): "
        line <- getLine
        let guess = read line
        if guess == target
        then putStrLn "You win!"
        else do
            putStrLn $ if guess < target then "Too small!" else "Too big!"
            runGame target (nbTries - 1)

main :: IO ()
main = do
    target <- randomRIO (0, 100)
    runGame target 10

-- >>> :info compare

-- >>> :info Ordering

