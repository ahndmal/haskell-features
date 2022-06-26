module Listss where 

-- ls1 = [x | x <- [1..10], odd x ]
comp1 x = [x*2 | x <- [1..10]]

main = putStr $ show $ comp1 3