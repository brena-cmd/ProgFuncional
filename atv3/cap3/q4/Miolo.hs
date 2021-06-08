
interior xs = drop 1 . take ((length xs)-1)


main = do
    a <- readLn :: IO [Int]
    print $ interior a