module AreaPerimeter where

areaOrPerimeter :: Double -> Double -> Double
areaOrPerimeter a b
        | a == b = a * a
        | otherwise =  (a * 2) + (b * 2)