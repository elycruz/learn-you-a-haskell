import Control.Monad

main :: IO [()]
main = do
    putStrLn "Make an associative list of numbers and colors using `forM`:"
    associations <- forM [1..5] (\x -> do
        putStrLn $ "\nEnter color for number " ++ (show x) ++ ":"
        color <- getLine
        return (x, color))
    putStrLn "\nColor and number associations chosen:"
    mapM (\(n, xs) -> putStrLn $ (show n) ++ " -> " ++ xs) associations
