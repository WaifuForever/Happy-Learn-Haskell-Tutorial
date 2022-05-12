module SalaryWithBonus
    ( fun
    ) where
-- https://www.beecrowd.com.br/judge/en/problems/view/1009

import Text.Printf

calcSalary :: Double -> Double -> Double
calcSalary a b = a + b * 0.15

readADouble :: IO Double
readADouble = readLn

fun = do
    name <- getLine
    b <- readADouble
    c <- readADouble
    printf "TOTAL = R$ %.2f\n" (calcSalary b c)
    