module EvenNums where 

evenNumbers :: [Int] -> Int -> [Int]
evenNumbers xs n = reverse (take n (reverse  [x | x <- xs, even x]))
evenNumbers xs n = drop =<< subtract n . length $ filter even xs
evenNumbers xs n = reverse $ take n $ reverse $ filter even xs
evenNumbers = (. ((. reverse) . (reverse .) . take)) . flip ($) . filter even
evenNumbers = flip ((reverse .) . (. reverse) . take) . filter even


takeLast :: Int -> [a] -> [a]
takeLast n xs = drop (length xs - n) xs

evenNumbers :: [Int] -> Int -> [Int]
evenNumbers xs n = takeLast n (filter even xs)

