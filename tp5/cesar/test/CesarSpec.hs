module CesarSpec (main, spec) where

import Test.Hspec

import Cesar

main :: IO ()
main = hspec spec

message1 :: String
message1 = "foobar 42 toto"

message1Cesar4 :: String
message1Cesar4 = "jssfev 42 xsxs"

message2CesarK :: String
message2CesarK = "sh cpjavpyl lza iypsshual, s'ljolj lza tha"

spec :: Spec
spec = do

    -- TODO
    pure ()

    -- describe "decaler" $ do
    --     it "1 a" $ decaler 1 'a' `shouldBe` 'b'
    --     it "1 z" $ decaler 1 'z' `shouldBe` 'a'
    --     it "0 a" $ decaler 0 'a' `shouldBe` 'a'
    --     it "0 z" $ decaler 0 'z' `shouldBe` 'z'
    --     it "-1 a" $ decaler (-1) 'a' `shouldBe` 'z'
    --     it "-1 z" $ decaler (-1) 'z' `shouldBe` 'y'

    -- describe "chiffrerCesar" $ do
    --     it "1 hal" $ chiffrerCesar 1 "hal" `shouldBe` "ibm"
    --     it "-1 ibm" $ chiffrerCesar (-1) "ibm" `shouldBe` "hal"
    --     it "4 message1" $ chiffrerCesar 4 message1 `shouldBe` message1Cesar4
    --     it "-4 message1Cesar4" $ chiffrerCesar (-4) message1Cesar4 `shouldBe` message1

    -- describe "compterLettres" $ do
    --     it "message1" $ compterLettres message1 `shouldBe` 10

    -- describe "compterOccurences" $ do
    --     it "o message1" $ compterOccurrences 'o' message1 `shouldBe` 4
    --     it "b message1" $ compterOccurrences 'b' message1 `shouldBe` 1
    --     it "z message1" $ compterOccurrences 'z' message1 `shouldBe` 0

    -- describe "calculerFrequences" $ do
    --     it "message1" $ calculerFrequences message1 
    --         `shouldBe`
    --         [100,100,0,0,0,100,0,0,0,0,0,0,0,0,400,0,0,100,0,200,0,0,0,0,0,0]

    -- describe "calculerKhi2" $ do
    --     it "message2CesarK" $ 
    --         calculerKhi2 (calculerFrequences message2CesarK) 
    --         `shouldBe` 8382
        
    --     it "chiffrerCesar 4 message2CesarK" $ 
    --         calculerKhi2 (calculerFrequences (chiffrerCesar 4 message2CesarK))
    --         `shouldBe` 3368

    -- describe "casserCesar" $ do
    --     it "message2CesarK" $ casserCesar message2CesarK `shouldBe` TODO

    --     it "dechiffrement" $ chiffrerCesar TODO message2CesarK 
    --         `shouldBe` "la victoire est brillante, l'echec est mat"

    --     it "chiffrerCesar k message2CesarK" $ 
    --         calculerKhi2 (calculerFrequences (chiffrerCesar TODO message2CesarK))
    --         `shouldBe` 640

