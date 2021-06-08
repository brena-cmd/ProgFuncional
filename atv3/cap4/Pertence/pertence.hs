
pertence x xs = 
    if length (filter(==x) xs) == 0 then False else True

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ pertence a b