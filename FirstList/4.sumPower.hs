powerList list = [elem ^ 2 | elem <- list]

sumPower :: [Int] -> Int
sumPower list = foldl (\acc next -> acc + next) 0 (powerList list)