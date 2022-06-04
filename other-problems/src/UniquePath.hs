module UniquePath
    ( fun
    ) where
{-|

The robot can only move either down or right at any point in time. The robot is trying to
reach the bottom-right corner of the grid (marked ‘Finish’ in the diagram below).
How many possible unique paths are there?
Note: A and B will be such that the resulting answer fits in a 32 bit signed integer.
Example :
Input : A = 2, B = 2
Output : 2
2 possible routes : (0, 0) -> (0, 1) -> (1, 1)
OR : (0, 0) -> (1, 0) -> (1, 1)

-}

findPath :: (Int, Int) -> (Int, Int) -> Int
findPath (x1, y1) (x2, y2) 
    | x1 > x2 || y1 > y2 = 0
    | x1 < x2 && y1 < y2 = 
            let
                x = findPath (x1+1, y1) (x2, y2)
                y = findPath (x1, y1+1) (x2, y2)
            in x + y
    | otherwise = 1
      
    


fun :: IO ()
fun = do
    let x = (1, 1)
    let y = (2, 2)
    let z = (3, 3)
    let z' = (4, 4)
    let z'' = (5, 5)

    putStrLn (show (findPath x (3, 7)))
    putStrLn (show (findPath x y))
    putStrLn (show (findPath x z))
    putStrLn (show (findPath x z'))
    putStrLn (show (findPath x z''))
    putStrLn (show (findPath x (6, 6)))
    putStrLn (show (findPath x (7, 7)))
