data Answer = Yes | No

-- shapes
data Shape = Circle Float
           | Rect Float Float
square :: Float -> Shape
square n = Rect n n   
area :: Shape -> Float
area (Circle r) = pi * r^2
area (Rect x y) = x * y        

-- cats
data Cat = Cat String Int
    deriving Show

murz = Cat "Murz" 4

main = putStr $ square 3.0