-- file: ch04/IntParse.hs

loop :: Int -> String -> Int
asInt xs = loop 0 xs

loop acc (x:xs) = let acc' = acc * 10 + digitToInt x
                  in loop acc' xs

splitLines :: String -> [String]

splitLines [] = []
splitLines cs =
    let (pre, suf) = break isLineTerminator cs
    in pre : case suf of
                ('\r':'\n':rest) -> splitLines rest
                ('\r':rest) -> splitLines rest
                ('\n':rest) -> splitLines rest
                _ -> []
isLineTerminator c = c == '\r' || c == '\n'