
maiorque x y = 
    if x > y then x
        else y

maior xs = 
    if(length xs)==1 then head xs
        else foldl maiorque (head xs) xs


main = do
    a <- readLn :: IO [Int]
    print $ maior a