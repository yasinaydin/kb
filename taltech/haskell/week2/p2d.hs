-- Write a program in haskell that calculates the hypotenus (c) of the right triangle as shown in figure. 


fibo 0 = 1
fibo 1 = 1
fibo n = fibo (n-1) + fibo(n-2)

main = do
  print (fibo 1)
  print (fibo 2)
  print (fibo 3)
  print (fibo 4)
  print (fibo 5)
  print (fibo 6)
  print (fibo 7)
