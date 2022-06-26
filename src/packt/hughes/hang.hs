import System.IO

hangman :: IO ()
hangman = do putStrLn "Think of word:"
             word <- sgetLine
             putStrLn "Try to guess it:"
             play word

sgetLine :: IO String
sgetLine = do x <- getCh
              if x == '\n' then
                do putChar x
                   return []
              else
                do putChar '-'
                   xs <- sgetLine
                   return (x:xs)

getCh :: IO Char
getCh = do hSetEcho stdin False
           c <- getChar
           hSetEcho stdinTrue
           return c

play :: String -> IO ()
play = do putStr "? "
          guess <- getLine
          if guess == word then
            putStrLn "You got it!"
          else
            do putStrLn (match word guess)
               play word

match :: String -> String -> String
match xs ys = [if elem x ys then x else '-' | x <- xs]                                                              