-- Write a program which declares a data type named Box in Haskell for finding the surface area and volume of a box. 
-- Surface Area of a Box =  2(L × W) + 2(L × D) + 2(W × D)

data MyShape = MyBox Float Float Float

area :: MyShape -> Float
area (MyBox a b c) = 2* (a*b + b*c + a*c)

volume :: MyShape -> Float
volume (MyBox a b c) = a*b*c

main = do
  print "ready"
  print (area (MyBox 1 2 3) ) -- should be 22
  print (volume (MyBox 1 2 3) ) -- should be 6
