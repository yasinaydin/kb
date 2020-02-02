-- Write a program in haskell that calculates the Euclidian distance between two coordinates (x1,y1) and (x2,y2).

p1 = [3,5]
p2 = [5,5]

distance :: list -> list -> Float
distance a1 a2 = sqrt (((p2!!0)-(p1!!0))^2 + ((p2!!1)-(p1!!1))**2)

main = do
  putStrLn("point 1:")
  print(p1)

  putStrLn("point 2:")
  print(p2)

  putStrLn("distance:")
  print (distance p1 p2)
