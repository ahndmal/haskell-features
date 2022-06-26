module Codewars.Kata.IsUpperCase where

import Data.List
import Data.Char

isUpperCase :: String -> Bool
isUpperCase str = all (isUpper) [c | c <- str, isLetter c]

isUpperCase = all (not . isLower)
isUpperCase = not . any (`elem` ['a'..'z'])
isUpperCase = not . any isLower