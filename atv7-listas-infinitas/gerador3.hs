import Data.List
--com list compreension
lista :: [Integer]
lista = [x | (y,z) <- zip (repeat 2)[0,1..], let x = y^z]

-- sem list compreension
lista2 = [1] ++ iterate (*2) 2