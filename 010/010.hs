primes = go [2..2000000] []
    where
        go (t:ts) p
            | all (\x -> t `rem` x /= 0) p = t:(go ts t:p)
            | otherwise = go ts p
        go t p = []

main = print $ sum primes
