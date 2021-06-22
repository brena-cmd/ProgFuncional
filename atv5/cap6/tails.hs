tails' :: [Int] -> [[Int]]
tails' [] = [[]]
tails' xs = tails' (drop 1 xs) ++ [xs]

tails :: [Int] -> [[Int]]
tails xs = reverse $ tails' xs

main = do
    a <- readLn :: IO [Int]
    print $ tails a