stars :: Int -> String
stars n = concat (replicate n "* ")

repeatn :: Int -> String -> String
repeatn n s = concat $ replicate n s

repeatStr :: Int -> String -> String
repeatStr n = concat . replicate n
repeatStr n s = concat $ replicate n s
repeatStr n str = [1..n] >> str
repeatStr n str
  | n > 0 = str ++ repeatStr (n-1) str
  | otherwise = []
repeatStr n str = concat $ take n $ repeat str

main :: IO ()
-- main = putStr (stars 5)
main = putStr (repeatn 5 "A")

