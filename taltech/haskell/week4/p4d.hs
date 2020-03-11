-- Suppose we have three sets of fruits A = [“mango“, “melon“, “apple“], B= [“berry“, “banana“, “kiwi“, “pine apple“] and C = [“grapes“, “orange“]. Write a program to concat three sets in to one using MONOIDS.

import Data.Monoid

f1 = ["mango", "melon", "apple"]
f2 = ["berry", "banana", "kiwi", "pine apple"]
f3 = ["grapes", "orange"]

main = do 
    print $ f1 <>  f2 <> f3
