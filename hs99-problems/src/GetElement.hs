module GetElement
    ( fun
    ) where


getElement :: [a] -> Int -> a
getElement [] _ = error "No end for empty lists!"
getElement (x:_) 1  = x
getElement xs k
    | k < 1 || k > length xs = error "index out of bounds"
    | otherwise =  xs !! (k-1)

fun = do
    let x = [2, 5, 6, 3, 8]
    let y = ["Dogde", "Britanny", "Shrine", "Trickster", "Dump"]
    
    putStrLn (show (getElement x 3))
    putStrLn (show (getElement x 2))
    putStrLn (show (getElement y 2))
