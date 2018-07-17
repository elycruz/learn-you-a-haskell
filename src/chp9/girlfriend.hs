import System.IO

main :: IO ()
main = do
    handle <- openFile "../../assets/avril-lavigne-girlfriend.txt" ReadMode
    contents <- hGetContents handle
    putStr contents
    hClose handle
