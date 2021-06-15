quadperf' :: Int -> Int -> Bool
quadperf' i x
            |(i*i) == x = True
            | (i*i) < x = quadperf' (i+1) x
            | otherwise = False

quadperf :: Int -> Bool
quadperf x = quadperf' 1 x

main = do
    a <- readLn :: IO Int
    print $ quadperf a