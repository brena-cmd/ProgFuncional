
frequencia x xs = length(filter(==x) xs)


main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ frequencia a b