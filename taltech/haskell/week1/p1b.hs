-- Practice 1b
-- Write a program in haskell that calculates the periphery and area of a circle with the given radius.

periphery :: Float -> Float  
periphery radius = 2.0 * radius * pi

area :: Float -> Float
area radius = pi * radius * radius

radius :: Float
radius = 3.0

main = do
  putStrLn("radius=")
  print (radius)
  putStrLn("periphery=")
  print (periphery radius)
  putStrLn("area=")
  print (area radius)
