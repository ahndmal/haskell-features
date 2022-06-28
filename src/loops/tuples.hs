
("Christopher", "Walken", 55)
fst (8,11) 
fst ("Wow", False) 
snd (8,11) 

-- ghci> zip [1,2,3,4,5] [5,5,5,5,5]  
-- [(1,5),(2,5),(3,5),(4,5),(5,5)]  
-- ghci> zip [1 .. 5] ["one", "two", "three", "four", "five"]  
-- [(1,"one"),(2,"two"),(3,"three"),(4,"four"),(5,"five")]  

let triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10] ]   
let rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]   
