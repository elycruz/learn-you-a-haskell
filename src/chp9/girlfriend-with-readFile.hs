import System.IO

-- Same as './girlfriend-with-withFile.hs'
--  but with `readFile`

main :: IO ()
main = do
    contents <- readFile "../../assets/avril-lavigne-girlfriend.txt"
    putStr contents
