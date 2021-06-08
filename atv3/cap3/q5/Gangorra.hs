
gangorra p1 c1 p2 c2
    | equilibrado = 0
    | esquerda_pra_baixo = -1
    | direita_pra_baixo = 1
    where
        equilibrado =   p1*c1 == p2*c2
        esquerda_pra_baixo = p1*c1 > p2*c2
        direita_pra_baixo = p1*c1 < p2*c2


main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    d <- readLn :: IO Int
    print $ gangorra a b c d