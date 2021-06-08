
iguais x y z 
    | todosIguais = 3
    | doisIguais = 2
    | otherwise = 0
    where 
        todosIguais = x == y && x == z
        doisIguais = x == y || x==z || y == z

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ iguais a b c