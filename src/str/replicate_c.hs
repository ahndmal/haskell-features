stars :: Int -> String
stars n = concat (replicate n "* ")

repeatn :: Int -> String -> String
repeatn n s = concat $ replicate n s

main :: IO ()
-- main = putStr (stars 5)
main = putStr (repeatn 5 "A")