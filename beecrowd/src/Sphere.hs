module Sphere
    ( fun
    ) where

--https://www.beecrowd.com.br/judge/en/problems/view/1011
import Text.Printf

sphere :: Double -> Double
sphere a = 4/3 * a^^3 * 3.14159
    
fun = do
    a <- readLn :: IO Double
    printf "VOLUME = %.3f\n" (sphere (abs a))