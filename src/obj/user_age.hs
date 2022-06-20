import Data.Text

main :: IO ()
main = 
    print $ displayAge 10

displayAge :: Int -> Text
displayAge age = 
    "The age of user is: " <> toText age

toText :: (Show a) => a -> Text
toText = pack . show