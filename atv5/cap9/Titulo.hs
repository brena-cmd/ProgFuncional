import Data.Char (ord)

tornarMaiuscula x =     if (fromEnum x)>=97 && (fromEnum x)<=172
                                        then toEnum((fromEnum x)-32)
                                        else x

tornarMinuscula x =     if (fromEnum x)>=65 && (fromEnum x)<=90 
                                            then toEnum((fromEnum x)+32)
                                            else x

titulo' :: [Char] -> [Char]
titulo' xs = (map tornarMinuscula xs)
        where
            tornarMinuscula x =     if (fromEnum x)>=65 && (fromEnum x)<=90 
                                            then toEnum((fromEnum x)+32)
                                            else x

titulo xs = (tornarMaiuscula (head (titulo' xs))): drop 1 (titulo' xs)


 
main = do
    a <- getLine
    print $ titulo a