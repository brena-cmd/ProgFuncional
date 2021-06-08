somaImpares xs = sum [x+0 | x <- xs, odd x]


main = do
    a <- readLn :: IO [Int]
    print $ somaImpares a