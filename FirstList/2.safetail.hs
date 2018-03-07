
safetailPatternMatch :: [a] -> [a]
safetailPatternMatch [] = []
safetailPatternMatch (x:xs) = xs

safetailCondExpression :: [a] -> [a]
safetailCondExpression list =
    if (null list)
        then []
    else drop 1 list

safetailGuards :: [a] -> [a]
safetailGuards list 
    | null list = []
    | otherwise = drop 1 list