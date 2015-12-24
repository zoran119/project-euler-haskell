res = maximum $ takeWhile (not . divisible) [20..]

divisible :: Int -> Bool
divisible n = all (\x -> n `rem` x == 0) [2..20]

main = print $ res + 1
