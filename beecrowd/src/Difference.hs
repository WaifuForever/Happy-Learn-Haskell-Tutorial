module Difference
    ( fun
    ) where
-- https://www.beecrowd.com.br/judge/en/problems/view/1007

import Text.Printf

difference :: Int -> Int -> Int
difference a b = a-b

multiply :: Int -> Int -> Int
multiply a b = a*b

readAInt :: IO Int
readAInt = readLn

fun = do
    a <- readAInt
    b <- readAInt
    c <- readAInt
    d <- readAInt

    putStrLn ("DIFERENCA = " ++ show (difference (multiply a b) (multiply c d)))
    