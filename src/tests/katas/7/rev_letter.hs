module SF176 where

import Data.Char (isAlpha)

reverseLetter :: String -> String
reverseLetter = reverse . filter isAlpha