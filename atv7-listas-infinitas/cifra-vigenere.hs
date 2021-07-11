import Data.List
import Data.Maybe

chave' xs tam = take tam $ cycle xs

tiraEspaco xs = [x | x <- xs, x /= ' ']

vigenere texto chave = [y | (a,k) <- misturado, let y =  alfabeto !! ((fromJust (elemIndex a alfabeto) + fromJust (elemIndex k alfabeto))`mod` 26) ]
    where
        textoAtt = tiraEspaco texto
        chaveAtt = chave' chave (length textoAtt)
        misturado = zip textoAtt chaveAtt
        alfabeto = ['A'..'Z']