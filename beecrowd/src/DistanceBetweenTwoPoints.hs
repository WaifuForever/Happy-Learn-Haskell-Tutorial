module DistanceBetweenTwoPoints
    ( fun
    ) where
--https://www.beecrowd.com.br/judge/en/problems/view/1015
import Text.Printf

calc :: Double -> Double -> Double -> Double-> Double
calc x1 y1 x2 y2 = sqrt ((x2 - x1)^^2 + (y2 - y1)^^2)

readTwoDoubles :: IO [Double]
readTwoDoubles = do
    input <- fmap (map read.words) getLine
    if length input == 2 then return input else do
        readTwoDoubles

fun = do
    a <- readTwoDoubles
    b <- readTwoDoubles
    
    printf "%.4f\n" (calc (a !! 0) (a !! 1) (b !! 0) (b !! 1))
