res = map (\(a,b,c) -> a * b * c) $ filter square_f $ filter sum_f $ filter size_f $ seq
    where
        square_f (a,b,c) = a^2 + b^2 == c^2
        sum_f    (a,b,c) = a + b + c == 1000
        size_f   (a,b,c) = a < b && b < c

        seq = [(a,b,c) | a <- [0..332], b <- [a+1..1000], let c = 1000 - a - b]

main = print $  res
