import System.IO
import Data.Char


main = do
    contents <- readFile "src/files/text1.txt"
    writeFile "src/files/text1Cap.txt" (map toUpper contents)
    appendFile "src/files/text1.txt" "\nADDED!"