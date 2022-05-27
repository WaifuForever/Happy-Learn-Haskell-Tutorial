module ListLength
    ( fun
    ) where

myLength :: [a] -> Int
myLength a = length a


fun = do
    let x = [2, 5, 6, 3, 8]
    let y = ["Dogde", "Britanny", "Shrine", "Trickster", "Dump"]
    
    putStrLn (show (myLength x))
    putStrLn (show (myLength y))
