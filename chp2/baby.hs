alphabet :: [Char]
alphabet = ['a'..'z']

doubleMe :: Num a => a -> a
doubleMe x = x + x

doubleUs :: Num a => a -> a -> a
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber :: (Ord a, Num a) => a -> a
doubleSmallNumber x = if x > 100 then x else x * 2

doubleSmallNumber' :: (Ord a, Num a) => a -> a
doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1

conanO'Brien :: [Char]
conanO'Brien = "It's a-me, Conan O'Brien!"

boomBangs :: Integral a => [a] -> [(a, [Char])]
boomBangs xs = [ if x < 10 then (x, "BOOM!") else (x, "BANG!") | x <- xs, odd x ]

length' :: (Num b) => [a] -> b
length' xs = sum [ 1 | _ <- xs ]

removeNonUpperCase :: [Char] -> [Char]
removeNonUpperCase str = [ char | char <- str, not $ elem char $ alphabet ]

removeNonUpperCase' :: [Char] -> [Char]
removeNonUpperCase' st = [ c | c <- st, not $ elem c alphabet]

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

factorial :: Integer -> Integer
factorial n = product [1..n]

circumference :: Float -> Float
circumference r = 2 * pi * r

circumf' :: Double -> Double
circumf' r = 2 * pi * r
