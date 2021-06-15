

fib 0 = 1
fib 1 = 1
fib x = fib (x-1) + fib(x-2)

main = do
    a <- readLn :: IO Int
    print $ fib a