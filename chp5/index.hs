
multThree :: Int -> Int -> Int -> Int
multThree x y z = x * y * z

compareWithHundred :: Int -> Ordering
compareWithHundred x = compare 100 x

divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

isUpperAlnum :: Char -> Bool
isUpperAlnum = (`elem` ['A'..'Z'])

-- Higher order functions
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

