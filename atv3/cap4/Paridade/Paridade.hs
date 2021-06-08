
paridade a
    | a == [] = False  
    | odd (length $ [x | x <- a, x == True]) = True
    | otherwise = False;


main = do
    a <- readLn :: IO [Bool]
    print $ paridade a