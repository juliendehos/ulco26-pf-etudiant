
module Cesar where

import Data.Char ( isLetter, ord, chr )

--- >>> ord 'a'
-- 97

-- >>> chr 97
-- 'a'

-- >>> isLetter 'a'
-- >>> isLetter '4'
-- >>> isLetter ' '
-- True
-- False
-- False

-- Décale un caractère c dans l'alphabet, de façon circulaire.
--
--  - k: pas du décalage
--  - c: caractère à décaler 
-- TODO decaler :: Int -> Char -> Char

-- Chiffre/déchiffre un message, selon le chiffrement de Cesar 
-- (décalage dans l'alphabet).
--
--  - k: pas du décalage
--  - str: message à chiffrer 
-- TODO chiffrerCesar :: Int -> String -> String

-- Compte le nombre de lettres d'un message.
-- TODO compterLettres :: String -> Int

-- Compte le nombre d'occurrences d'un caractère dans un message.
-- TODO compterOccurrences :: Char -> String -> Int

-- Calcule la fréquence d'apparition de chaque lettre de l'alphabet
-- dans un message. Les fréquences sont en pour mille.
-- TODO calculerFrequences :: String -> [Int]

-- Fréquences standards (distribution) dans la langue courante, en pour mille.
frequencesStd :: [Int]
frequencesStd = 
    [ 81, 15, 28, 43, 126, 22, 20, 61, 70,  2,  8,  40, 24
    , 67, 75, 19,  1,  60, 63, 90, 28, 10, 24,  2,  20,  1
    ]

-- Calcule l'écart d'une distribution par rapport à la distribution standard,
-- selon la formule du Khi2.
-- TODO calculerKhi2 :: [Int] -> Int

-- Trouve la clé de déchiffrement d'un message chiffré selon le chiffrement de César.
-- Retourne la clé qui minimise le Khi2, parmi les 26 chiffrements possibles.
-- TODO casserCesar :: String -> Int

