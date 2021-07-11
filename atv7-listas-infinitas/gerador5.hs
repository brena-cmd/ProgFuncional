
import Data.List

gerador5 :: Integral a => a -> [a]
gerador5 x = unfoldr (\b -> if b == 0 then Nothing else Just (b, b `div` 2)) x