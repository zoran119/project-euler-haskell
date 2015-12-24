import Data.List

res = foldr (*) 1 $ map (\(x,y) -> x^y) $ map (counts) $ nub $ foldr (++) [] $ factors
counts n = (n, maximum $ map (length . filter (==n)) factors)

factors = map (factorise) [2..20]

factorise = go [2..] where
    go all@(x:xs) n
        | n == 1 = []
        | n `rem` x == 0 = x:(go all (n `div` x))
        | otherwise = go xs n

main = print res
