mAnd :: [Bool] -> Bool
mAnd [] = True
mAnd (head:tail) = head && mAnd tail

mConcat :: [[a]] -> [a]
mConcat [] = []
mConcat (head:tail) = [elem | elem <- head] ++ (mConcat tail)

mReplicate :: Int -> a -> [a]
mReplicate 0 _ = []
mReplicate times value = [value] ++ mReplicate (times - 1) value

getElementAtIndex :: [a] -> Int -> Int -> a 
getElementAtIndex (head:tail) counter index 
    | counter == index = head
    | otherwise = getElementAtIndex tail (counter + 1) index

indexAt :: [a] -> Int -> a
indexAt list index 
    | index < 0 || index > (length list) = error "Index out of range"
    | otherwise = getElementAtIndex list 0 index