main = do
  line <- getLine
  if null line
    then return ()
    else do
      putStrLn $ reverseWords line
      let a = "Good"
          b = "job!"
      putStrLn $ a ++ b
      main

reverseWords :: String -> String
reverseWords = unwords . map reverse . words
