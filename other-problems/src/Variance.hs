module Variance
    ( fun
    ) where
import System.Random

sumList :: [Int] -> Int
sumList [] = 0
sumList [a] = a
sumList (x:xs) = x + sumList xs

normalize :: Int -> Int -> Int
normalize a b = abs (a - b)

randomList :: Int -> Int -> Int -> IO[Int]
randomList 0 _ _= return []
randomList n lowest highest= do
  r  <- randomRIO (lowest, highest)
  rs <- randomList (n-1) lowest highest
  return (r:rs) 

readThreeIntegers :: IO [Int]
readThreeIntegers = do
    input <- fmap (map read.words) getLine
    if length input == 3 then return input else do
        readThreeIntegers


fun = do
    input <- readThreeIntegers
    
    ages <- randomList (last input) (head input) (head (tail input)) 
    
    let onlyAdults = map (\x -> if x < 18 then x + 17 else if x > 22 then x - 5 else x) ages
    
    let average = fromIntegral(sumList onlyAdults) `div` fromIntegral(length onlyAdults)

    let normalizedList = map (normalize average) onlyAdults
    let squaredList = map (^2) normalizedList
   
    
    let variance = fromIntegral(sumList squaredList) / fromIntegral(length squaredList)
    
    putStrLn (show average ++ "  " ++ show (length squaredList))
    print (take 20 onlyAdults)
    print (take 20 normalizedList)
    print (take 20 squaredList)
    
    print variance
    print (sqrt variance)
    
    