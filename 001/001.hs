module Main where

res :: Int
res = sum $ filter (\n -> n `rem` 3 == 0 || n `rem` 5 == 0) [1..1000]

main :: IO ()
main = do
    putStrLn $ show res
