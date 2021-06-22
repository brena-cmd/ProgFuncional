
isPalind :: [Char] -> Bool
isPalind [] = True

isPalind xs 
            | head xs == last xs = isPalind (drop 1 (take ((length xs)-1) xs))
            | otherwise = False



main = do
    a <- getLine
    print $ isPalind a