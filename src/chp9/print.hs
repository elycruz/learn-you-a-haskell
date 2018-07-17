import Data.List (intersperse)

main :: IO ()
main = do
    putStrLn "`print` prints out any value that derives `Show`"
    print "`print` prints out any value that derives `Show`"
    print True
    print 2
    print "Some value"
    print 3.2
    print [3, 4, 5]
    print $ intersperse ", " $ map (\x -> [x]) ['a'..'z']
