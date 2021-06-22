


selec xs ys = [a | (a,b) <- lista, y <- ys, z <- xs, y == b && a == z]
    where
        lista = zip ['a'..'z'] [0..]



main = do
    a <- getLine
    b <- readLn :: IO [Int]
    print $ selec a b