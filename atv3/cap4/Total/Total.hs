
total xs = sum $ map geraUm xs
    where 
        geraUm x = 1

main = do
    a <- readLn :: IO [Int]
    print $ total a