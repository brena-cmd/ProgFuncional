
splitints xs = ([x | x <- xs, odd x], [y | y <- xs, even y]) 


main = do
    a <- readLn :: IO [Int]
    print $ splitints a