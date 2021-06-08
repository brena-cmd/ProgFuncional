

countNeg xs = length numerosNegativos
                where numerosNegativos = filter(< 0) xs

main = do
    a <- readLn :: IO [Int]
    print $ countNeg a