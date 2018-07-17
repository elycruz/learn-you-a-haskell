import System.Random

main :: IO ()
main = do
    g_gen <- getStdGen
    putStrLn $ take 21 (randomRs ('a', 'z') g_gen)
