maximum' :: Ord a => [a] -> a
maximum' [] = error "Maximum of empty list!"
maximum' [x] = x
maximum' (x:xs) = x `max` (maximum' xs)

replicate' :: Int -> a -> [a]
replicate' n x
  | n <= 0 = []
  | otherwise = x : replicate' (n-1) x

