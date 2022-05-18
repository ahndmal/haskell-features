import System.IO

main = do
    handle <- openFile "src/files/text1.txt" ReadMode
    contents <- hGetContents handle
    putStr contents
    hClose handle