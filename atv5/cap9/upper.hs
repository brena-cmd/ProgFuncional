
upper xs = [z | x <- xs, (y,z) <-letras, y == x || x==z ]
    where
        letras = (zip ['a'..'z'] $ ['A'..'Z'])++[(' ', ' ')] ++ zip ['1'..'9'] ['1'..'9']
main = do
    a <- getLine
    print $ upper a