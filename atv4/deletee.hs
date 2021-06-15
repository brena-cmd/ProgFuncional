

deletee x [] = []
deletee x (y:xs)
                |x == y = xs 
                |otherwise = y : deletee x xs

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ deletee a b