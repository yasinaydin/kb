-- Write a program in Haskell using Scans where input is a number and the output is the multiplication of that number with 5

main = do
    print "ready"
    _input <- readLn
    let input = (_input :: Int)
    print "input="
    print (input)
  
    let output = last(scanl (*) 5 [input])
    print "output"
    print (output)
