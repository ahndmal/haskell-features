module Cats where

data Animal = Cat { name :: String }
            | Dog {name :: String
                 , age :: Integer
                 , color :: String }
            | Bird { name :: String }  
            deriving Show  




main = putStr Cat "Murz"