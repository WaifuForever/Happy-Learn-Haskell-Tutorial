module SimpleCalculate
    ( fun
    ) where

import Text.Printf
-- https://www.beecrowd.com.br/judge/en/problems/view/1010

calc :: (Int, Int, Float) -> (Int, Int, Float) -> Float
calc (_, x1, y1) (_, x2, y2) = fromIntegral (x1) * y1 + fromIntegral(x2) * y2 
  
readProduct :: IO [String]
readProduct = do
    input <- fmap words getLine
    if length input == 3 then return input else do
        readProduct

toTuple :: Int -> Int -> Float -> (Int, Int, Float)
toTuple a b c = (a, b, c)

toInt :: String -> Int
toInt a = read a :: Int

toFloat :: String -> Float 
toFloat a = read a :: Float

fun = do
    a <- readProduct
    b <- readProduct
    
    let t1 = toTuple (toInt (a !! 0)) (toInt(a !! 1)) (toFloat(a !! 2))
        t2 = toTuple (toInt (b !! 0)) (toInt(b !! 1)) (toFloat(b !! 2))
    
    printf "VALOR A PAGAR: R$ %.2f\n" $ calc t1 t2
