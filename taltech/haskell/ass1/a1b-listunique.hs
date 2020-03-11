-- Write a haskell program to remove the duplicates from a given list of integers.
-- Expected Output:
-- Original list:
-- 1 1 2 3 4 4 5 6 6 6
-- After removing duplicates from the above list:
-- 1 2 3 4 5 6

import Data.Set 

-- sets are unique
uniq1 :: Ord a => [a] -> [a]
uniq1 = toList . fromList

-- checks with array element
uniq2 :: Eq a => [a] -> [a]
uniq2 [] = []
uniq2 (el:arr)  | el `elem` arr = uniq2 arr
                | otherwise     = el : uniq2 arr

main = do
  print (uniq1 [1,2,3,3,1,5,2,2])
  print (uniq2 [1,1,2,2,2,3,5,5])
