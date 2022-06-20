module Main where

import System.IO

c :: Integer
c = 4

foo :: Integer -> Integer
foo a =
  b where
    b = a * 2 * c

main = do
  putStrLn $ show $ foo 10

-- main = putStrLn . show $ doubleMe 4