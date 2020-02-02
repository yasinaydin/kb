-- Use  FOLDS to create the list of squares of some numbers. 

squares [] = []
squares (el:arr) = [el ^ 2] ++ squares arr

main = do
  print (squares [1,2,3])
