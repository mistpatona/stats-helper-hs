module Fun where

down :: (Integral a) => a -> a -> a
down n j = foldr1 (*) [n-j+1..n] 
{-# SPECIALISE down :: Int->Int->Int     #-}
{-# SPECIALISE down :: Integer->Integer->Integer #-}

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = foldr1 (*) [1..n]
{-# SPECIALISE factorial :: Int->Int     #-}
{-# SPECIALISE factorial :: Integer->Integer #-}

choose :: (Integral a) => a -> a -> a
n `choose` k = (n `down` k) `div` factorial k
{-# SPECIALISE choose :: Int->Int->Int     #-}
{-# SPECIALISE choose :: Integer->Integer->Integer #-}
