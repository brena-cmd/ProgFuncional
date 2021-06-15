
maioresQue x xs = [ y | y <- xs, y > x]

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ maioresQue a b