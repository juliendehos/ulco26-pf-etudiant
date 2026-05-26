module MyIO 
    (getKey
    , Key(..)
    , clearScreen
    ) where

import System.IO

getKey :: IO Key
getKey = str2key . reverse <$> go ""
    where
        go chars = do
            char <- getChar
            more <- hReady stdin
            (if more then go else pure) (char : chars)

data Key
    = KeyUp
    | KeyDown
    | KeyRight
    | KeyLeft
    | KeyEnter
    | KeyEsc
    | KeyOther Char

str2key :: String -> Key
str2key "\ESC[A" = KeyUp
str2key "\ESC[B" = KeyDown
str2key "\ESC[C" = KeyRight
str2key "\ESC[D" = KeyLeft
str2key "\n" = KeyEnter
str2key "\ESC" = KeyEsc
str2key "" = KeyOther ' '
str2key (c:_) = KeyOther c

clearScreen :: IO ()
clearScreen = putStr "\ESC[2J"

-- https://www.man7.org/linux/man-pages/man4/console_codes.4.html
-- https://www.emtec.com/kb/en/0005/terminal-esc-squences-for-ansi-vt100-and-wyse

