unico x xs =    if length(filter (==x) xs) == 1 then True
                    else False

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ unico a b