module Search where

import Data.Vector as V ( (!), length, Vector )

-- assumes v is sorted
-- https://en.wikipedia.org/wiki/Binary_search
bsearch :: Ord a => V.Vector a -> a -> Maybe Int
bsearch v x = error "not implemented"
-- TODO

