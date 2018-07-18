import System.Environment
import qualified Data.ByteString.Lazy as BL

main :: IO ()
main = do
    (fileName1:fileName2:_) <- getArgs
    copyFile' fileName1 fileName2

copyFile' :: FilePath -> FilePath -> IO ()
copyFile' fromFilePath toFilePath = do
    contents <- BL.readFile fromFilePath
    BL.writeFile toFilePath contents
