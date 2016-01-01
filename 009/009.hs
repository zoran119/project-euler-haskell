res = map (\(a,b,c) -> a * b * c) $ filter (\(a,b,c) -> a^2 + b^2 == c^2) $ filter (\(a,b,c) -> a + b + c == 1000) $ filter (\(a,b,c) -> a < b && b < c) $ [(a,b,c) | a <- [0..1000], b <- [0..1000], c <- [0..1000]]

main = print res
