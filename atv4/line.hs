
line x = take x [z..]
        where
            z = sum[1..x-1]+1

main = do
    a <- readLn :: IO Int
    print $ line a