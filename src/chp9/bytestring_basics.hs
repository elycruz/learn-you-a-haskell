import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as Char8
import qualified Data.ByteString.Lazy as BL
import qualified Data.ByteString.Lazy.Char8 as Char8L

main :: IO ()
main = do
    putStrLn "Char8.putStrLn and ByteString.pack example:"
    Char8.putStrLn $ B.pack [97..122]

    putStrLn "Char8.putStrLn, Char8.show, and ByteString.unpack:"
    Char8.putStrLn $ B.pack [97..122]

    putStrLn "ByteString.fromChunks"
    Char8L.putStrLn $
        BL.fromChunks
            [ B.pack [40,41,42]
            , B.pack [43,44,45]
            , B.pack [46,47,48]
            ]


