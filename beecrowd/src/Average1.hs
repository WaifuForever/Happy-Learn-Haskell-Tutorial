module Average1
    ( fun
    ) where
-- https://www.beecrowd.com.br/judge/en/problems/view/1005

import Text.Printf

average :: Double -> Double -> Double
average a b = (a * 3.5 + b * 7.5)/11

readADouble :: IO Double
readADouble = readLn

fun = do
    a <- readADouble
    b <- readADouble
    printf "MEDIA = %.5f\n" (average a b)
    