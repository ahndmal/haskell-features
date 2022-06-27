module SquareDigit where

import Data.Char

squareDigit :: Int -> Int
squareDigit a = map ^2 (map digitToInt (show a))