-- `mapM_` does the same as `mapM`
--  except ignores return values
main :: IO ()
main = mapM_ print [1..5]
