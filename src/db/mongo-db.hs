{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Main where

import Database.MongoDB
import Control.Monad.Trans (liftIO)


main :: IO ()
main = do
    --pipe <- connect (host "127.0.0.1")
    --e <- access pipe master "cats" run
    --close pipe
    --print e
    let v1 = val 10
    putStrLn $ show v1

    let f1 = (=: v1 "AAA")

    putStrLn f1
    
    

run :: Action IO()
run = do
    insertCats
    allCats >>= printDocs "cats"
   

allCats :: Action IO [Document]
allCats = rest =<< find (select [] "cats") {sort = ["cats.age" =: 1]}   

insertCats :: Action IO [Value]
insertCats = insertMany "cats" generateCats

printDocs :: String -> [Document] -> Action IO ()
printDocs title docs = liftIO $ putStrLn title >> mapM_ (print . exclude ["_id"]) docs

generateCats :: [Document]
generateCats = map (\a -> ["age" =: a, "name" =: "AAA"]) [1..5] 
 -- (\a -> ["age" =: 4, "name" =: "Murko"]) [1..10] 
