-- Write a program in haskell that calculates the hypotenuse  (c) of the right triangle as shown in figure. 

hypo :: Float -> Float -> Float
hypo a b = (sqrt (a^2 + b^2))

x :: Float
x = 3.0

y :: Float
y = 4.0

main = do
  putStrLn("x=")
  print (x)
  putStrLn("y=")
  print (y)
  putStrLn("hypotenus=")
  print (hypo x y)
