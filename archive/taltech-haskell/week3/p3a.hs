-- practice 3a
-- ▪ Write a program based on Map Module in haskell, which produces the following output:
-- [(1,[4]) ,(2,[8]), (3,[12]), (4,[16])]

import Data.Set 

mkUniq :: Ord a => [a] -> [a]
mkUniq = toList . fromList

program2 x = (x,[x*4])
program1 x = map program2 x

t = [1,2,3,4,5,6]

main = do
  print t
  print (program1 t)
