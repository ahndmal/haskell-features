-- file: ch11/QC-basics.hs
import Test.QuickCheck
import Data.List

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort lhs ++ [x] ++ qsort rhs
  where lhs = filter (< x) xs
    rhs = filter (>= x) xs


    ghc --make -o setup Setup.lhs
setup configure
setup build
sudo ./setup install