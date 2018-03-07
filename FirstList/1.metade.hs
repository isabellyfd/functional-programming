
mlength list = foldl (\acc _ -> 1 + acc) 0 list

metade :: [a] -> ([a], [a])
metade list = (take (quot (mlength list) 2) list, drop (quot (mlength list) 2) list)