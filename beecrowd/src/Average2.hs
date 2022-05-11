module Average2
    ( fun
    ) where
-- https://www.beecrowd.com.br/judge/en/problems/view/1006

import Text.Printf

average :: Double -> Double -> Double -> Double
average a b c = (a * 2 + b * 3 + c * 5)/10

readADouble :: IO Double
readADouble = readLn

fun = do
    a <- readADouble
    b <- readADouble
    c <- readADouble
    printf "MEDIA = %.1f\n" (average a b c)
    