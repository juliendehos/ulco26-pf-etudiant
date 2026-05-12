module XorSpec (main, spec) where

import Test.Hspec

import Xor

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  
    describe "xor1" $ do
        it "T T -> F" $ xor1 True True `shouldBe` False
        it "T F -> T" $ xor1 True False `shouldBe` True
        it "F T -> T" $ xor1 False True `shouldBe` True
        it "F F -> F" $ xor1 False False `shouldBe` False

    -- TODO


    