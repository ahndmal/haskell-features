module ReverseWords where

import Data.List

reverseWords :: String -> String
reverseWords s = unwords (reverse (words s))
reverseWords s = intercalate " " (reverse $ words s)
reverseWords =  unwords . reverse . words
reverseWords = iso words unwords %~ reverse
