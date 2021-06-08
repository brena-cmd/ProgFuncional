
uniao a b = a++[x | x<-b, not(x `elem` a)]


main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ uniao a b