-- Recap last class
-- folding on right 
-- stacks the values and applies the function when recursive call returns the value
mfoldr :: (a -> a -> a) -> [a] -> a
mfoldr func [value] = value
mfoldr func (head:tail) = func head (mfoldr func tail)

-- use example 
sumList list = mfoldr (+) list

-- folding on left 
-- applies the function to the value and head first

mfoldl :: (a -> b -> a) -> a -> [b] -> a
mfoldl func value [] = value
mfoldl func value (head:tail) = mfoldl func (func value head) tail

-- use example 
mOr :: [Bool] -> Bool
mOr list = mfoldl (||) False list

-- fuction composition
-- applies a . func to 2 diff (or not) functions

compose :: (b -> c) -> (a -> b) -> a -> c
compose f g = \x -> f (g x)

-- examples 
twice func = func . func

-- with out composition
sumPowerListOfEvenNumbers list = sum( 
    map (^2) (
        filter (\elem -> elem `mod` 2 == 0) list)
    ))
-- with composition
sumPowerListUsingComposition list = sum . map (^2) . filter (\elem <- elem `mod` 2 == 0) list