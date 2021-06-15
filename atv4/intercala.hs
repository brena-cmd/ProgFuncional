intercal' :: [Int] -> [Int] -> [Int] -> [Int]
intercal' lista [] (y:ys) = lista
intercal' lista (x:xs) [] = lista
intercal' lista (x:xs) (y:ys) = 
                                if ((length xs) > 1) and ((length ys) > 1) then lista++[x]++[y]
                                    else intercal' lista xs ys

intercal :: [Int] -> [Int] -> [Int]
intercal xs ys = intercal' [] xs ys 

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ intercal a b