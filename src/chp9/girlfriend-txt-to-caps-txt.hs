import System.IO
import Data.Char

-- Convert girlfriend lyrics to uppercase.

main :: IO ()
main = do
    contents <- readFile "../../assets/avril-lavigne-girlfriend.txt"
    let ucaseContents = (map toUpper contents)
    writeFile "../../assets/avril-lavigne-girlfriend-uppercase.txt" ucaseContents
    putStr ucaseContents
