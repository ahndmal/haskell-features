module Clss where

class Cat c where
    greet :: String -> String
    greet a = "Hello " ++ a

main :: IO ()
main = putStr "A"    