res :: Int
res = sum $ filter even $ takeWhile (<4000000) $ map fib [0..]

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib x = fib(x-1) + fib(x-2)

main :: IO ()
main = putStrLn $ show res
