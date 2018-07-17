-- Effect of `sequence`

-- Doing `sequence1` is the same
--  as doing `sequence2`
doSequence1 :: IO ()
doSequence1 = do
    a <- getLine
    b <- getLine
    c <- getLine
    putStrLn "\nCaptured lines:"
    print [a, b, c]

doSequence2 :: IO ()
doSequence2 = do
    rslt <- sequence [getLine, getLine, getLine]
    putStrLn "\nCaptured lines:"
    print rslt

main :: IO ()
main = do
    putStrLn "Doing sequence 1 (enter 3 lines)..."
    doSequence1
    putStrLn "\nDoing sequence 2 (enter 3 lines)..."
    doSequence2
