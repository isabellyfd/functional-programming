sumPower :: [Int] -> Int
sumPower list = foldl (\acc elem -> acc + (elem ^ 2)) 0 list