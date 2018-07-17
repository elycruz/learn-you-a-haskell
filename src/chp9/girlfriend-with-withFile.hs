import System.IO

-- Same as './girlfriend.hs'
--  but with `withFile`

main :: IO ()
main = do
    withFile "../../assets/avril-lavigne-girlfriend.txt" ReadMode (
        \handle -> do
            contents <- hGetContents handle
            putStr contents

        )
