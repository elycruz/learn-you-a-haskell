tellFortune :: String -> String
tellFortune name = "You will be a very rich and happy person " ++ name ++ "."

main = do
    putStrLn "Hello, what is your name?" 
    name <- getLine
    putStrLn $ "Read this carefully, because this is your future: " ++ tellFortune name 


