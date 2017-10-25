import Data.List

solveRpn :: String -> Float
solveRpn = head . foldl foldingFn [] . words
  where foldingFn (x:y:ys) "+" = (x + y):ys
        foldingFn (x:y:ys) "-" = (x - y):ys
        foldingFn (x:y:ys) "*" = (x * y):ys
        foldingFn (x:y:ys) "^" = (x ** y):ys
        foldingFn (x:y:ys) "/" = (x / y):ys
        foldingFn (x:xs) "ln" = log x:xs
        foldingFn xs "sum" = [sum xs]
        foldingFn xs numStr = read numStr:xs
