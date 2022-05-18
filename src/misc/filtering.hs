
largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [100000,99999..])
    where p x = x `mod` 3829 == 0

--
 sum (takeWhile (<10000) [n^2 | n <- [1..], odd (n^2)])

--are equivalent 

 map (+3)[1,6,3,2] 
 map (\x -> x + 3)[1,6,3,2]

--

