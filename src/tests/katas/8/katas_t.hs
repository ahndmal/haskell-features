module StringRepeatSpec (spec) where

import StringRepeat (repeatStr)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The repeatStr function" $ do
    it "should work for some examples" $ do
      repeatStr 3 "*" `shouldBe` "***"
      repeatStr 5 "#" `shouldBe` "#####"
      repeatStr 2 "ha " `shouldBe` "ha ha "
    it "should work for some random cases" $ do
      property $ \ n s -> do
        repeatStr n s `shouldBe` concat (replicate n s)

module Codewars.Arrays where

import Data.List

positiveSum :: [Int] -> Int
positiveSum xs = sum $ filter (>0) xs        
positiveSum = sum . filter (>0)