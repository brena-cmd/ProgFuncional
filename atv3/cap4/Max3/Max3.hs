
max3 x y z =
    if x > y && x > z then x
        else if y > x && y > z then y
            else z


main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ max3 a b c