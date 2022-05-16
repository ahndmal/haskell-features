import Data.List
-- import Data.List (nub, sort)

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

-- "hey" `isPrefixOf` "hey there!"

main = putStrLn . show $ numUniques [1,3]

xs = [[5,4,5,4,4],[1,2,3],[3,5,4,3],[],[2],[2,2]]
sortBy (compare `on` length) xs
[[],[2],[2,2],[1,2,3],[3,5,4,3],[5,4,5,4,4]]

