module Main where

import Xor ( xor1 )

main :: IO ()
main = do
    print (True `xor1` True)
    print (True `xor1` False)
    print (False `xor1` True)
    print (False `xor1` False)

