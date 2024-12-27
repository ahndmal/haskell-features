module Main where

import System.IO
import Control.Monad
import Data.List
import System.Random

--1 > g <- newStdGen
-- > randomR (1, 10) g
--2  > randomRIO (1, 10)

main :: IO ()
main = do
--  mapM_ processFiles [1..20]
  let res = map processFiles [1..11] -- processFiles
  print $ show res

generateLorem :: Int -> String
generateLorem 0 = "lorem"
generateLorem a = generateL
  where lorem = "Lorem ipsum dolor sit amet consectetur adipiscing elit facilisis sociosqu pretium, congue tincidunt maecenas "
        loremWords = words lorem
        lorLength = length loremWords
        lorNew = " " ++ (loremWords !! a) ++ " "
        generateL = map (\i -> lorem !! randomRIO (1, i)) [1..lorLength]


processFiles :: Int -> IO Int
processFiles a = do
  let fileUrl = "/home/andrii/Documents/lorem" ++ (show a) ++ ".txt"
  handle <- openFile fileUrl ReadMode
  contents <- hGetContents handle
  let contentsLength = length contents
  let wordsCount = length $ words contents
  hClose handle
  wordsCount


