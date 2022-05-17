
data Person = Person { firstName :: String
, lastName :: String
, age :: Int
, height :: Float
, phoneNumber :: String
, flavor :: String
} deriving (Show)

-- :t firstName >>> firstName :: Person -> String

-- cars
data Car = Car String String Int deriving (Show)
-- ghci> Car "Ford" "Mustang" 1967
-- Car "Ford" "Mustang" 1967

data CarR = CarR {company :: String, model :: String, year :: Int} deriving (Show)
-- ghci> Car {company="Ford", model="Mustang", year=1967}
-- Car {company = "Ford", model = "Mustang", year = 1967}

data Maybe a = Nothing | Just a

data Car3 a b c = Car3 { company2 :: a
                      , model2 :: b
                      , year2 :: c
                      } deriving (Show)

tellCar :: Car -> String
tellCar (Car3 {company2 = c, model2 = m, year2 = y}) = "This " ++ c ++ " " ++ m ++ " was made in "
    ++ show y                      

-- read "Person {firstName =\"Michael\", lastName =\"Diamond\", age = 43}" :: Person

type PhoneBook = [(String,String)]
type AssocList k v = [(k,v)]
--Make sure that you really understand the distinction between type constructors and value constructors

data Either a b = Left a | Right b deriving (Eq, Ord, Read, Show)

