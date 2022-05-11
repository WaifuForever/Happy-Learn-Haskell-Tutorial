module SimpleProduct
    ( fun
    ) where
-- https://www.beecrowd.com.br/judge/en/problems/view/1004

multiplyTwoNumbers :: Integer -> Integer -> Integer
multiplyTwoNumbers a b = a * b

readAInt :: IO Integer
readAInt = readLn

fun = do
    a <- readAInt
    b <- readAInt
    let result = multiplyTwoNumbers a b
    putStrLn ("PROD = " ++ show (result))