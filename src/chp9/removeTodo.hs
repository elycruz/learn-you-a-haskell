import System.IO
import System.Directory
import Data.List

workDir :: String
workDir = "../../assets/"

main = do
    let todoFilePath = (workDir ++ "todo.txt")
    handle <- openFile todoFilePath ReadMode
    (tempFilePath, tempHandle) <- openTempFile workDir "temp"
    todoContents <- hGetContents handle
    let todoTasks = lines todoContents
        numberedTasks = zipWith(\n line -> show n ++ " - " ++ line) [0..] todoTasks
    putStrLn "Todo Items:"
    putStr $ unlines numberedTasks
    numStr <- getLine
    let num = read numStr
        newTodoItems = delete (todoTasks !! num) todoTasks
    hPutStr tempHandle $ unlines newTodoItems
    hClose handle
    hClose tempHandle
    removeFile todoFilePath
    renameFile tempFilePath todoFilePath
