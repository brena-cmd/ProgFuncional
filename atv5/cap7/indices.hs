

indices :: Int -> [Int] -> [Int]
indices x xs = [z | (y , z) <- lista, y == x]
    where
        lista = zip xs [0..]


main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ indices a b