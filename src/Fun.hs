module Fun where

down :: (Integral a) => a -> a -> a
down n j = foldr1 (*) [n-j+1..n] 
factorial :: Int -> Int
factorial 0 = 1
factorial n = foldr1 (*) [1..n]

