res = (filter isprime [1,3..]) !! 10000
isprime n = all (\x -> n `rem` x /= 0) [2..n-1]

main = print res
