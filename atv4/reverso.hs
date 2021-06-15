
reverso xs = [last xs] ++ init xs

main = do
    a <- readLn :: IO [Int]
    print $ reverso a