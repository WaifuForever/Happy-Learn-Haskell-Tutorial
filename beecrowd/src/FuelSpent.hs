module FuelSpent
    ( fun
    ) where
--https://www.beecrowd.com.br/judge/en/problems/view/10177
import Text.Printf

calc :: Int -> Int -> Float
calc a b = fromIntegral(a * b) / 12
    
fun = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    
    printf "%.3f\n" (calc a b)

