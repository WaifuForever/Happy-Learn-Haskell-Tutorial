module LastButOne
    ( fun
    ) where

lastButOne :: [a] -> a
lastButOne [] = error "No end for empty lists!"
lastButOne [x] = error "No end for single element lists!"
lastButOne x = reverse x !! 1

fun = do
    let x = [2, 5, 6, 3, 8]
    let y = ["Dogde", "Britanny", "Shrine", "Trickster", "Dump"]
    
    putStrLn (show (lastButOne x))
    putStrLn (show (lastButOne y))
