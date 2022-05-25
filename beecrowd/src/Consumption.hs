module Consumption
    ( fun
    ) where
--https://www.beecrowd.com.br/judge/en/problems/view/1014
import Text.Printf

calc :: Int -> Float -> Float
calc a b = fromIntegral(a) / b

fun = do
    a <- readLn :: IO Int 
    b <- readLn :: IO Float
    
    printf "%.3f km/l\n" (calc a b)
