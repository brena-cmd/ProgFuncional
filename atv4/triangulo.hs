line 0 = []
line x = take x [z..]
        where
            z = sum[1..x-1]+1

triangle :: Int -> [[Int]]
triangle 1 = [[1]]
triangle x = ([line x]++triangle (x-1))


main = do
    a <- readLn :: IO Int
    print $ triangle a