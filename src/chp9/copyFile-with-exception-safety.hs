import System.Environment
import System.Directory
import Data.List (intercalate)
import qualified Data.ByteString.Lazy as BL

main :: IO ()
main = do
    (fileName1:fileName2:_) <- getArgs
    fileExists <- doesFileExist fileName1
    if fileExists then copyFile' fileName1 fileName2
    else putStrLn . concat $ "\"":fileName1:"\" is unreachable.":[]

copyFile' :: FilePath -> FilePath -> IO ()
copyFile' fromFilePath toFilePath = do
    contents <- BL.readFile fromFilePath
    BL.writeFile toFilePath contents
