module Salary
    ( fun
    ) where
-- https://www.beecrowd.com.br/judge/en/problems/view/1008

import Text.Printf

multiply :: Int -> Float -> Float
multiply a b = b * fromIntegral(a)

readAInt :: IO Int
readAInt = readLn

fun = do
    a <- readAInt
    b <- readAInt
    c <- readLn :: IO Float
    
    putStrLn ("NUMBER = " ++ show(a))
    printf "SALARY = U$ %.2f\n" (multiply b c)
    