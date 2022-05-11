module SimpleSum
    ( fun
    ) where
-- https://www.beecrowd.com.br/judge/en/problems/view/1003

addTwoNumbers :: Integer -> Integer -> Integer
addTwoNumbers a b = a + b

readAInt :: IO Integer
readAInt = readLn

fun = do
    a <- readAInt
    b <- readAInt
    let result = addTwoNumbers a b
    putStrLn ("SOMA = " ++ show (result))