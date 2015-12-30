res = (filter (\(x,y) -> y == True) $ map isprime [1,3..]) !! 10000
isprime n = if all (\x -> n `rem` x /= 0) [2..n-1] then (n, True) else (n, False)

main = print $ fst res
