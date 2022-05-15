primes = filterPrime [2..]
  where filterPrime (p:xs) =
          p : filterPrime [x | x <- xs, x `mod` p /= 0]

funcOne x y = x + y

doubleSmallNumber x = if x > 100
  then x
  else x*2


--   doubleSmallNumber x = (if x > 100 then x else x*2) + 1

-- main :: IO ()    -- This says that main is an IO action.
-- main = return () -- This tells main to do nothing.

main = putStrLn . show $ doubleSmallNumber 4