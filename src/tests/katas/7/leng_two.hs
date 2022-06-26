module LengthAndTwoValues (alternate) where

import Data.List

alternate :: Int -> a -> a -> [a]
alternate a s1 s2 = take a $ cycle [s1, s2] 
alternate n x y = take n $ cycle [x,y]
alternate n a b = [if even x then b else a | x <- [1..n]]
alternate = (. (:)) . ((. pure) .) . (.) . (. cycle) . take
