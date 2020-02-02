-- Write a program in haskell where it can find the position of 1 in binary sequence like this [1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1].

import Data.List

main = do
  print (elemIndex 1 [1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1])
  print (elemIndex 1 [0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1])
