import Data.List

q = [0]++[y | x <- lista, y <- x]
    where 
        lista = transpose [ [1,2..],[(-1),(-2)..]]
