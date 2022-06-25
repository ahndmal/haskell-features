
import Data.Time.LocalTime
import Data.Time

double :: Integer -> Integer
double x = x + x

simpleMultiplication :: Int -> Int
simpleMultiplication n = case n `mod` 2 == 0 of
                          True -> n * 8
                          False -> n* 9

-- rep :: Int -> String -> String
-- rep n s = 

-- today = fromGregorianValid 2008 10 22
tm = getCurrentTime

main = do
    putStr $ show $ getCurrentTime
