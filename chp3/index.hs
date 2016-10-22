lucky :: Int -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"
charName x = "There is no name for this Character."

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

head' :: [a] -> a

head' [] = error "Can't call head on an empty list, dummy!"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is long.  The first two elements are: " ++ show x ++ " and " ++ show y

firstLetter :: String -> String
firstLetter "" = "Empty string, whoops!"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

calcBmi :: Double -> Double -> Double
calcBmi x y = x / y ^ 2

bmiTell :: Double -> Double -> String
bmiTell weight height 
  | calcBmi weight height <= 18.5 = "You're underweight, you emo you!"
  | calcBmi weight height <= 25.0 = "You're suppossedly normal.  Pffft, I bet you're ugly!"
  | calcBmi weight height <= 30.0 = "You're fat!  Lose some weight, fatty!"
  | otherwise =  "You're a whale, congratulations!"

