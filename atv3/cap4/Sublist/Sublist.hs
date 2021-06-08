
sublist x y z = drop a (take b z)
    where
        b = if y < 0 then (y + (length z))
                else y
        a = if x < 0 then (x + (length z))
                else x
        


main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO [Int]
    print $ sublist a b c