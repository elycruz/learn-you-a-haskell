import Control.Monad (forever)
import Data.Char (toUpper)

main :: IO ()
main = do
    putStrLn "This script will continually asks for input..."
    forever $ do
        putStrLn "Capatalize incoming (enter text):"
        line <- getLine
        putStrLn $ map toUpper line
