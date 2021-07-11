
import Data.List

digitos :: Int -> [Int]
digitos x = reverse $ unfoldr (\b -> if b == 0 then Nothing else Just (b `mod` 10, b `div` 10)) x