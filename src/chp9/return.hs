doBindingReturns :: IO ()
doBindingReturns = do
    a <- return "Really" -- Bind value to name `a`
    b <- return "neat!"  -- Bind value to name `b`
    putStrLn $ a ++ " " ++ b

main = do
    putStrLn "Returning `IO ()`"
    return ()
    putStrLn "Getting line (enter text)..."
    line <- getLine
    putStrLn "Returning `IO \"Gibberish\"`"
    return "Gibberish"
    putStrLn "Returning `IO 4`"
    return 4
    putStrLn "Printing captured line"
    putStrLn line
    putStrLn "Doing 'bound' `return`s"
    doBindingReturns
