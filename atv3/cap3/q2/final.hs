
final x xs = drop ((length xs)-x) xs



main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ final a b