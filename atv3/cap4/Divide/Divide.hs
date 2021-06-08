
divide a b = (x, y)
    where 
        x = take b a
        y = drop b a



main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO Int
    print $ divide a b