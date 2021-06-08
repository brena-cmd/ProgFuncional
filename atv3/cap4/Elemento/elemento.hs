

elemento xs x = x !! xs
    
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ elemento a b