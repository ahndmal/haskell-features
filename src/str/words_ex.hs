import Data.Char
-- makeUpperCase :: String -> String
-- makeUpperCase s = 

wrd = "Hello from Ukraine"

main :: IO ()
-- main = putStrLn (show (words "Hello from Ukraine"))
main = putStrLn $ show (toUpper 'a')