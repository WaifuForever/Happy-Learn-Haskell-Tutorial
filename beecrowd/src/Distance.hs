module Distance
    ( fun
    ) where
--https://www.beecrowd.com.br/judge/en/problems/view/1016
import Text.Printf

calc :: Int -> Int
calc a = a * 2
    
fun = do
    a <- readLn :: IO Int
    printf "%d minutos\n" (calc a)
