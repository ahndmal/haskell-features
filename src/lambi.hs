addThree :: (Num a) => a -> a -> a -> a
addThree x y z = x + y + z
--
addThreeL :: (Num a) => a -> a -> a -> a
addThreeL = \x -> \y -> \z -> x + y + z

