import Data.Char (
    ord, 
    chr, 
    digitToInt
    )

import Data.List (find)

encrypt :: Int -> [Char] -> [Char]
encrypt complexity xs = [ chr $ (complexity+) $ ord c | c <- xs]

decrypt :: Int -> [Char] -> [Char]
decrypt complexity xs = map (\c -> chr $ (ord c) - complexity) xs

-- Nice 
decrypt' :: Int -> [Char] -> [Char]
decrypt' shift msg = encrypt (negate shift) msg

-- Lazy foldl
-- Takes long
    -- foldl (+) 0 (replicate(5^10) 1) 
-- Doesn't lazily setup intermediary aggregation
    -- import Data.List.foldl'
    -- foldl' (+) 0 (replicate(5^10) 1) 

digitSum :: Int -> Int
digitSum = sum . map digitToInt . show

firstTo :: Int -> Maybe Int
firstTo x = find (\num -> digitSum num == x) [1..]
