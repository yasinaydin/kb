-- Write a program in haskell where we can take four letters by pressing enter and then it will print the sequence: 

main = do
  print "enter four letters by pressing"
  a <- getLine
  print "a is this"
  print (sequence [a])
