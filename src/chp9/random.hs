import System.Random
import System.Environment
import Data.Char

threeCoins :: StdGen -> [Bool]
threeCoins gen =
    let (c1, nGen) = random gen
        (c2, nGen2) = random nGen
        (c3, nGen3) = random nGen2
    in  [c1, c2, c3]

randomCoinTosses :: Int -> StdGen -> [Bool]
randomCoinTosses n gen = take n $ randoms gen :: [Bool]

-- finiteRandoms :: (RandomGen g, Random a, Num n) => n -> g -> ([a], g)
-- finiteRandoms 0 gen = ([], gen)
-- finiteRandoms n gen =
--     let (v, newGen) = random gen
--         (restOfList, finalGen) = finiteRandoms (n - 1) newGen
--     in (v:restOfList, finalGen)

-- randomIntsR :: (RandomGen g, Random a, Num n) => n -> (n, n) -> g -> ([a], g)
-- randomIntsR 0 _ g = ([], gen)
-- randomIntsR n r gen =
--     let (v, newGen) = randomR r gen
--         (restOfList, finalGen) = randomIntsR (n - 1) r newGen
--     in  (v:restOfList, finalGen)
--
-- randomIntsR' :: (RandomGen g, Num n) => n -> (n, n) -> g -> [Int]
-- randomIntsR' 0 _ g = []
-- randomIntsR' n r gen = (take n) $ (randomRs r gen :: [Int])

main :: IO ()
main = do
    putStrLn "First arg to program used as seed for static \"StdGen\" values"

    -- Get args
    args <- getArgs

    -- Set up examples
    let n = read (args !! 0) :: Int
        ranExample1 = random (mkStdGen 100) :: (Int, StdGen)

    -- `random` example 1
    putStrLn "\nRandom number generated from static `StdGen`:"
    putStrLn . show . fst $ ranExample1
    putStrLn ""

    -- `random` example 2 (`3` groups of `3` coin tosses)
    mapM_ putStrLn $ [
            ("Random coin toss from static `StdGen`:\n" ++) $
            unlines . map (show) . threeCoins $
            mkStdGen x | x <- [0..3]
        ]

    -- `randoms` example (`n` num of coin tosses)
    mapM_ putStrLn $ [
            ("Random number of coin tosses from static `StdGen`:\n" ++) $
            unlines . map (show) $ randomCoinTosses n (mkStdGen n)
        ]

    putStrLn "Random with `randomR`"
    putStrLn $ show . fst $ (randomR (0, 100) (mkStdGen n) :: (Int, StdGen))

    putStrLn "Randoms with `randomRs`"
    putStrLn $ unwords . map (show) . (take n) $ (randomRs (0, 100) (mkStdGen n) :: [Int])

    putStrLn "Randoms with `randomRs` 2"
    putStrLn $ (take n) $ (randomRs ('a', 'z') (mkStdGen n) :: [Char])

    putStrLn "Random string using globally stored number generator (`getStdGen`)"
    g_gen <- getStdGen
    putStrLn $ take 21 (randomRs ('a', 'z') g_gen)
