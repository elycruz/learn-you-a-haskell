main = do
  c <- getChar
  if c /= ' '
    then do 
      putChar c
      main
    else do 
      putStrLn " "
      return ()
