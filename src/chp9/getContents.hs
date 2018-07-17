import Data.Char

main :: IO ()
main = do
    c <- getContents
    putStr (map toUpper c)
