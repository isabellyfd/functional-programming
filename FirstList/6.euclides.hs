euclides :: Int -> Int -> Int
euclides a b
    | (b == 0 || b == a) = a
    | otherwise = euclides b (a `mod` b)
