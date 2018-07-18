import System.Environment
import System.IO
import System.IO.Error
import qualified Data.ByteString.Lazy as BL

main :: IO ()
main = process `catchIOError` errorHandler

process = do
    (fileName1:fileName2:_) <- getArgs
    copyFile' fileName1 fileName2

copyFile' :: FilePath -> FilePath -> IO ()
copyFile' fromFilePath toFilePath = do
    contents <- BL.readFile fromFilePath
    BL.writeFile toFilePath contents

errorHandler :: IOError -> IO ()
errorHandler e
    | isDoesNotExistError =
        case ioeGetFileName e of
            Just filePath -> putStrLn "File is unreachable.  File: " ++ filePath
            Nothing -> "An error occurred while trying to copy your file (check given path)."
    | otherwise = ioError e
