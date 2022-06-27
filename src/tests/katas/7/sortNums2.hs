module SortNums where 

import Data.List

sortNumbers :: [Int] -> Maybe [Int]
sortNumbers xs = if length xs == 0 then Nothing else Just (sort xs)
sortNumbers s = Just $ sort s

sortNumbers [] = Nothing
sortNumbers s = Just $ sort s
sortNumbers x = Just (sort x)

------------------------------------
------------------------------------

module SortNums where 

import Control.Arrow((>>>))

type Algebra f a = f a -> a

type CoAlgebra f a = a -> f a

newtype Fix f = In { out :: (f (Fix f)) }

data TreeF a r = Empty | Leaf a | Node r r 

instance Functor (TreeF a) where
    fmap f Empty = Empty
    fmap f (Leaf x) = Leaf x
    fmap f (Node l r) = Node (f l) (f r)

type Tree a = Fix (TreeF a)

merge :: Ord a => [a] -> [a] -> [a]
merge [] m = m
merge n [] = n
merge (x:xs) (y:ys) | x <= y = x : merge xs (y:ys)
merge (x:xs) (y:ys) = y : merge (x:xs) ys

split :: CoAlgebra (TreeF a) [a]
split []  = Empty
split [x] = Leaf x
split xs  = Node l r where
  (l, r) = splitAt (length xs `div` 2) xs

combine :: Ord a => Algebra (TreeF a) [a]
combine Empty = []
combine (Leaf x) = [x]
combine (Node l r) = merge l r

hylo :: Functor f => Algebra f b -> CoAlgebra f a -> a -> b
hylo f g = g >>> fmap (hylo f g) >>> f 

-- merge sort is just a hylomorphism, what's the problem
mergeSort :: Ord a => [a] -> [a]
mergeSort = hylo combine split

sortNumbers :: [Int] -> Maybe [Int]
sortNumbers [] = Nothing
sortNumbers xs = Just $ mergeSort xs