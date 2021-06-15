
rotDir 0 xs = xs
rotDir n (x:xs) = rotDir(n-1) (x:xs)

main = do
    a <- readLn :: IO Int
    b <- getLine
    print $ rotDir a b