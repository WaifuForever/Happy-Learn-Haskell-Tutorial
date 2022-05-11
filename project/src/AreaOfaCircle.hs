module AreaOfaCircle
    ( fun
    ) where
-- https://www.beecrowd.com.br/judge/en/problems/view/1002

import Text.Printf

calcCircumference :: Double -> Double
calcCircumference a = a^^2 * 3.14159

readADouble :: IO Double
readADouble = readLn

fun = do
    a <- readADouble
    printf "A=%.4f" (calcCircumference a)