module ExtremelyBasic
    ( fun
    ) where
-- https://www.beecrowd.com.br/judge/en/problems/view/1001

addTwoNumbers :: Integer -> Integer -> Integer
addTwoNumbers a b = a + b

readAInt :: IO Integer
readAInt = readLn

fun = do
    a <- readAInt
    b <- readAInt
    putStrLn ("X = " ++ show (addTwoNumbers a b))