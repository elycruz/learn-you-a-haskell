
doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100 then x else x * 2

doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1

conanO'Brien = "It's a-me, Conan O'Brien!"

boomBangs xs = [ if x < 10 then (x, "BOOM!") else (x, "BANG!") | x <- xs, odd x ]

length' xs = sum [ 1 | _ <- xs ]

removeNonUpperCase str = [ char | char <- str, not $ elem char ['A'..'Z'] ]

removeNonUpperCase' :: [Char] -> [Char]
removeNonUpperCase' st = [ c | c <- st, not $ elem c ['A'..'Z']]

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

factorial :: Integer -> Integer
factorial n = product [1..n]

circumference :: Float -> Float
circumference r = 2 * pi * r

circum' :: Double -> Double
circum' r = 2 * pi * r