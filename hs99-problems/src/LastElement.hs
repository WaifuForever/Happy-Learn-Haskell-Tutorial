module LastElement
    ( fun
    ) where

lastElement :: [a] -> a
lastElement [] = error "No end for empty lists!"
lastElement [x] = x
lastElement (_:xs) = lastElement xs

fun = do
    let x = [2, 5, 6, 3, 8]
    let y = ["Dogde", "Britanny", "Shrine", "Trickster", "Dump"]
    
    putStrLn (show (lastElement x))
    putStrLn (show (lastElement y))
