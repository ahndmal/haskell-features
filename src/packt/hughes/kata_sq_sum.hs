module SquareSum where

import Data.List

squareSum :: [Integer] -> Integer
squareSum l = sum (map (^2) l)
squareSum = sum . map (^2)
squareSum = foldr (\x s -> x*x + s) 0
