replicate :: Int -> a -> [a]
replicate n x = x : replicate (n - 1) x

length = foldr (\_ n -> 1+n) 0
takeWhile (/= ' ') "abc def"

main :: IO()
main = do
    putStrLn & even 4
