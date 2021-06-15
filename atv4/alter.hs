alter 0 = []
alter a =  alter x alter (x-(2*x))

main = do
    a <- readLn :: IO Int
    print $ alter a