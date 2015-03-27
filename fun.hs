module Fun where

down n j = foldr1 (*) [n-j+1..n] -- possibly wrong
factorial 0 = 1
factorial n = foldr1 (*) [1..n]

