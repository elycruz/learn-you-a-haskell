
multThree :: Int -> Int -> Int -> Int
multThree x y z = x * y * z

compareWithHundred :: Int -> Ordering
compareWithHundred x = compare 100 x

divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

isUpperChar :: Char -> Bool
isUpperChar = (`elem` ['A'..'Z'])

-- Higher order functions
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

maximum' :: Ord a => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
  | x > maxTail = x
  | otherwise = maxTail
  where maxTail = maximum' xs

