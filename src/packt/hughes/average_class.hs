module HowGoodAreYou where

betterThanAverage :: [Int] -> Int -> Bool
betterThanAverage arr a = if (sum arr) `div` (length arr) > a then True else False