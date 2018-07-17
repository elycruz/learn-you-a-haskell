import System.IO
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
    action args

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
