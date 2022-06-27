module SF176 where

import Data.Char (isAlpha)

reverseLetter :: String -> String
reverseLetter = reverse . filter isAlpha
reverseLetter = reverse . filter isLetter
reverseLetter str = reverse [x | x <- str, x `elem` ['a'..'z']]
