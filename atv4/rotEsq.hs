

rotEsq 0 xs = xs
rotEsq n (x:xs) = rotEsq(n-1) (xs++[x])


main = do
    a <- readLn :: IO Int
    b <- getLine
    print $ rotEsq a b