module SearchSpec (main, spec) where

import Data.Vector as V ( empty, fromList )
import Test.Hspec

import Search

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  
    describe "bsearch [7, 13, 37, 42]" $ do
        it "1"  $ bsearch (V.fromList [7, 13, 37, 42::Int]) 1  `shouldBe` Nothing
        it "12" $ bsearch (V.fromList [7, 13, 37, 42::Int]) 12 `shouldBe` Nothing
        it "13" $ bsearch (V.fromList [7, 13, 37, 42::Int]) 13 `shouldBe` Just 1
        it "7"  $ bsearch (V.fromList [7, 13, 37, 42::Int]) 7  `shouldBe` Just 0
        it "42" $ bsearch (V.fromList [7, 13, 37, 42::Int]) 42 `shouldBe` Just 3
        it "50" $ bsearch (V.fromList [7, 13, 37, 42::Int]) 50 `shouldBe` Nothing

    describe "bsearch [7, 13, 42]" $ do
        it "1"  $ bsearch (V.fromList [7, 13, 42::Int]) 1  `shouldBe` Nothing
        it "12" $ bsearch (V.fromList [7, 13, 42::Int]) 12 `shouldBe` Nothing
        it "13" $ bsearch (V.fromList [7, 13, 42::Int]) 13 `shouldBe` Just 1
        it "7"  $ bsearch (V.fromList [7, 13, 42::Int]) 7  `shouldBe` Just 0
        it "42" $ bsearch (V.fromList [7, 13, 42::Int]) 42 `shouldBe` Just 2
        it "50" $ bsearch (V.fromList [7, 13, 42::Int]) 50 `shouldBe` Nothing

    describe "bsearch []" $ do
        it "42"  $ bsearch V.empty (42::Int)  `shouldBe` Nothing

