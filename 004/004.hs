res = maximum $ filter (palindrome) $ map (\(x,y) -> x * y) [(x,y) | x <- [100..999], y <- [100..999]]

palindrome :: Int -> Bool
palindrome n
    | ns == reverse ns = True
    | otherwise = False
    where ns = show n

main = print res
