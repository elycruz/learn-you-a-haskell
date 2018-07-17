import System.Random
import Control.Monad(when)

main = do
    gen <- getStdGen
    askForNumber gen

askForNumber :: StdGen -> IO ()
askForNumber gen = do
    let (ranNum, newGen) = randomR (1, 10) gen :: (Int, StdGen)
    putStrLn "Which number in the range from 1 to 10 am I'm thinking of? "
    numStr <- getLine
    when (not $ null numStr) $ do
        let num = read numStr :: Int
        if ranNum == num
            then putStrLn "You are correct!"
            else putStrLn $ "Sorry, it was " ++ show ranNum
        askForNumber newGen
