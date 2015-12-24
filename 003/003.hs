res = maximum $ factor 600851475143

factor :: Int -> [Int]
factor n = go [2..] n where
    go all@(x:xs) n
        | n == 1 = []
        | n `mod` x == 0 = x:(go all (n `div` x))
        | otherwise = go xs n

main = print res
