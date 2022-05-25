module Area
    ( fun
    ) where

--https://www.beecrowd.com.br/judge/en/problems/view/1012
import Text.Printf

rectTriangle :: Double -> Double -> Double
rectTriangle a b = a * b / 2

circle :: Double -> Double
circle a = a^^2 * 3.14159

trapezoid :: Double -> Double -> Double -> Double
trapezoid a b c = (a + b) / 2 * c

square :: Double -> Double
square a = a^^2

rectangle :: Double -> Double -> Double
rectangle a b = a * b

readThreeDoubles :: IO [Double]
readThreeDoubles = do
    input <- fmap (map read.words) getLine
    if length input == 3 then return input else do
        readThreeDoubles

fun = do
    input <- readThreeDoubles
    printf "TRIANGULO: %.3f\n" (rectTriangle (input !! 0) (input !! 2))
    printf "CIRCULO: %.3f\n" (circle (input !! 2))
    printf "TRAPEZIO: %.3f\n" (trapezoid (input !! 0) (input !! 1) (input !! 2))
    printf "QUADRADO: %.3f\n" (square (input !! 1))
    printf "TRIANGULO: %.3f\n" (rectangle (input !! 0) (input !! 1))
    