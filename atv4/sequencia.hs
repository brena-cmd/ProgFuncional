sequencia :: Int -> Int -> [Int]
sequencia 0 y = []
sequencia x y = take x [y..]

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ sequencia a b