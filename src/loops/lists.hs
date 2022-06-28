module Listss where 

ls1 = [x | x <- [1..10], odd x ]
comp1 x = [x*2 | x <- [1..10]]
decompr2 = [ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]  
[ x*y | x <- [2,5,10], y <- [8,10,11]]  
[ x | x <- [10..20], x /= 13, x /= 15, x /= 19] 

length' xs = sum [1 | _ <- xs]   

removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]   

[ [ x | x <- xs, even x ] | xs <- xxs]  




--
main = putStr $ show $ comp1 3