module Codewars.Kata.Negative where

makeNegative :: Num a => a -> a
makeNegative = negate . abs
makeNegative n = - abs n
makeNegative n
  | n <= 0 = n
  | otherwise = -n
