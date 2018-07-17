import System.IO

main :: IO ()
main = do
    todoItem <- getLine
    appendFile "../../assets/todo.txt" (todoItem ++ "\n")
