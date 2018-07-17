-- Same as './shortLinesOnly-interact.hs' except
--   it is shorter (and albeit a little unreadable heh)

main :: IO ()
main = interact $ unlines . filter ((<10) . length) . lines
