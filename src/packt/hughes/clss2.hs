module Clss where

class Cat c where
    greet :: a -> a
    greet a = "Hello " ++ a

main :: IO ()
main = putStr "A"    