

produtoEscalar xs ys = foldl (+) 0 [x*y | (x,y) <-lista]
    where 
        lista = zip xs ys


main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ produtoEscalar a b