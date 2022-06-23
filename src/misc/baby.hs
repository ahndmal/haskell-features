module Main where

import System.IO

c :: Integer
c = 4
d = 10

foo :: Integer -> Integer
foo a =
  b where
    b = a * 2 * c + d

main = do
  putStrLn $ show $ foo 10

-- main = putStrLn . show $ doubleMe 4