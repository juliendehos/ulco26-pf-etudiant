
import Data.Char (isAsciiLower)
import Data.List (sort, nub)

parseInput :: String -> [[String]]
parseInput = map words . lines

removeAccents :: String -> String
removeAccents = map f
  where
    f 'á' = 'a'
    f 'à' = 'a'
    f 'â' = 'a'
    f 'é' = 'e'
    f 'è' = 'e'
    f 'ê' = 'e'
    f 'ï' = 'i'
    f 'î' = 'i'
    f 'ô' = 'o'
    f 'ù' = 'u'
    f 'ú' = 'u'
    f 'û' = 'u'
    f 'ç' = 'c'
    f x = x

process :: [[String]] -> [String]
process = sort . nub . filter (all isAsciiLower) . map (removeAccents . head) . filter f
  where
    f (x:_) = length x >= 5 && length x <= 7
    f _ = False

main :: IO ()
main = do
  ws <- process . parseInput <$> readFile "data.tsv" 
  writeFile "dict.txt" (unlines ws)

