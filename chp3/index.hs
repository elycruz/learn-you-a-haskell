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

bmiTell :: Double -> Double -> String
bmiTell weight height 
  | bmi <= skinny = "You're underweight, you emo you!"
  | bmi <= normal = "You're suppossedly normal.  Pffft, I bet you're ugly!"
  | bmi <= fat = "You're fat!  Lose some weight, fatty!"
  | otherwise =  "You're a whale, congratulations!"
  where bmi = weight / height ^ 2
        skinny = 18.5
        normal = 25.0
        fat = 30.0 

max' :: (Ord a) => a -> a -> a 
max' a b
  | a <= b = b
  | otherwise = a

myCompare :: Ord a => a -> a -> Ordering
a `myCompare` b
  | a == b = EQ
  | a <= b = LT
  | otherwise = GT

niceGreeting = "Hello!  So very nice to see you, "
badGreeting = "Oh!  Pfft.  It's you.  "
greet :: String -> String 
greet "Fernando" = niceGreeting ++ "Fernando"
greet name = badGreeting ++ name

initials :: String -> String -> String
initials firstName lastName = [f] ++ "." ++ [i] ++ "."
  where (f:_) = firstName
        (i:_) = lastName

calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi w h | (w, h) <- xs]
  where bmi weight height = weight / height ^ 2

cylinder :: Double -> Double -> Double
cylinder r h = 
  let sideArea = 2 * pi * r * h
      topArea = pi * r ^ 2
  in sideArea + 2 * topArea

calcBmis' :: [(Double, Double)] -> [Double]
calcBmis' xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi > 25.0]

head'' :: [a] -> a
head'' xs = case xs of [] -> error "No head." 
                       (x:_) -> x
describeList :: [a] -> String
describeList ls = "The list is " ++ (
  case ls of [] -> "empty" 
             [x] -> "a singleton list."
             xs -> "a longer list."
  )

describeList' :: [a] -> String
describeList' ls = "The list is " ++ what ls
  where what [] = "Empty."
        what [x] = "A singleton list."
        what xs = "A longer list."

