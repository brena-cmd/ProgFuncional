

import Data.List


gerador4 :: Integral a => a -> [a]
gerador4 x = takeWhile (>0)(iterate (`div` 2) x)



