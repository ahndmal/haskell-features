module Codewars.Arrays where

positiveSum :: [Int] -> Int
positiveSum = sum . filter (>0)
positiveSum numbers = sum [ a | a <- numbers, a > 0]
positiveSum (a:as)
  | (a > 0) = a + positiveSum (as)
  | otherwise = positiveSum (as)