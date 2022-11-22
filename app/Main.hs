module Main where

import System.IO
import Control.Monad
import Data.List


processFiles :: Int -> Int
processFiles a = do
  handle <- openFile "/home/andrii/Documents/lorem" ++ a ++ ".txt" ReadMode
  contents <- hGetContents handle
  let contentsLength = length contents
  let wordsCount = length $ words contents
  hClose handle
  wordsCount


main :: IO ()
main = do
--  mapM_ processFiles [1..20]
  let num = processFiles 2
  print (show num)


