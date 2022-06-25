
double :: Integer -> Integer
double x = x + x

simpleMultiplication :: Int -> Int
simpleMultiplication n = case n `mod` 2 == 0 of
                          True -> n * 8
                          False -> n* 9

main = do
    putStrLn (double 3)
