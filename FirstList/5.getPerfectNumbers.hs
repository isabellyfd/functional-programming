{- factors :: Int -> Int -> [Int]
factors _ 0 = []
factors number value 
 | (number /= value) && (number `mod` value == 0) = [value] ++ factors number (value - 1) 
 | otherwise = factors number (value - 1)

 perfeitos :: Int -> [Int]
 perfeitos 0 = []
 perfeitos number = 
    -}