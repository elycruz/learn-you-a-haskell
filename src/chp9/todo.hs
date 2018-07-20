import System.IO
import System.IO.Error
import System.Directory
import System.Environment
import Data.List

dispatch :: [(String, [String] -> IO ())]
dispatch =
    [ ("add", add)
    , ("view", view)
    , ("remove", remove)
    ]

main :: IO ()
main = do
    (command:args) <- getArgs
    let (Just action) = lookup command dispatch
        filePath = args !! 0
    existsBool <- (doesFileExist filePath)
    if not existsBool
    then putStrLn $ concat ["File path is not reachable.  File path: \"", filePath, "\""]
    else (action args) `catchIOError` errorHandler

workDir :: String
workDir = "../../assets/"

add :: [String] -> IO ()
add [todosFilePath, todoItem] = appendFile todosFilePath (todoItem ++ "\n")

view :: [String] -> IO ()
view [todosFilePath] = do
    c <- readFile todosFilePath
    renderTasks $ lines c

remove :: [String] -> IO ()
remove [todosFilePath, numberStr] = do
    handle <- openFile todosFilePath ReadMode
    (tempFilePath, tempHandle) <- openTempFile workDir "temp"
    todoContents <- hGetContents handle
    let todoTasks = lines todoContents
    let num = read numberStr
        newTodoItems = delete (todoTasks !! num) todoTasks
    hPutStr tempHandle $ unlines newTodoItems
    hClose handle
    hClose tempHandle
    removeFile todosFilePath
    renameFile tempFilePath todosFilePath

numberTasks :: [String] -> [String]
numberTasks xss = zipWith(\n line -> (show n) ++ " - " ++ line) [0..] xss

renderTasks :: [String] -> IO ()
renderTasks tasks = do
    putStrLn "Todo Items:"
    putStr $ unlines . numberTasks $ tasks

errorHandler :: IOError -> IO ()
errorHandler e
    | isDoesNotExistError e =
        case ioeGetFileName e of
            Just filePath -> putStrLn $ "File is unreachable.  File: " ++ filePath
            Nothing -> putStrLn "An unknown error occurred while trying to access todo file (check given path)."
    | otherwise = ioError e
