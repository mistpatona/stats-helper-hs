module Main where

import Fun

main::IO()
main = do
        putStrLn "hello"
        putStrLn $ show $ factorial 5 -- (5::Int)
        