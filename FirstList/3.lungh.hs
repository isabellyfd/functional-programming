luhnDobro :: Int -> Int
luhnDobro value 
    | (value * 2) > 9 = (value * 2) - 9
    | otherwise = (value * 2)

luhn :: Int -> Int -> Int -> Int -> Bool 
luhn fst snd trd fth = ((fst + (luhnDobro snd) + trd + (luhnDobro fth)) `mod` 10 == 0)