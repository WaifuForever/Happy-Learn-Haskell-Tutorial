module TheGreatest
    ( fun
    ) where

--https://www.beecrowd.com.br/judge/en/problems/view/1013
import Text.Printf

greatest :: Int -> Int-> Int
greatest a b = (a + b + abs(a-b)) `div` 2

readThreeInt :: IO [Int]
readThreeInt = do
    input <- fmap (map read.words) getLine
    if length input == 3 then return input else do
        readThreeInt

fun = do
    input <- readThreeInt
    let x = (greatest (input !! 0) (input !! 1))
    let y = (greatest (input !! 1) (input !! 2))
    
    printf "%d eh o maior\n" (greatest x y)