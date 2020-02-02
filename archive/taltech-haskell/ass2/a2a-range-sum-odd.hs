-- Write a program in Haskell which calculates the sum of all odd numbers in a given range.

myRange = [1,2..5]  

odds :: [Integer] -> [Integer]
odds [] = []
odds (x:xs)
    | odd     x = x : odds xs
    | otherwise = odds xs

main = do
  print "ready"
  print myRange
  print (odds myRange)
  print (sum (odds myRange))
