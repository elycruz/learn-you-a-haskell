main :: IO ()
main = do
    c <- getContents
    putStr (shortLinesOnly c)

shortLinesOnly :: String -> String
shortLinesOnly input =
    let allLines = lines input
        shortLines = filter (\line -> length line < 10) allLines
        result = unlines shortLines
    in result
