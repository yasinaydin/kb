-- We have two triangles, where the bases of the triangles are 5cm and 3 cm, heights of the triangles are 3 cm and 7 cm respectively. Find the areas of two triangles using LAMBDAS. 

area1 (base,height) = base * height /2
area2 = \b h -> b * h / 2

main = do
  putStrLn("triangle 1")
  print (area1 (5,3))
  print (area2 5 3)
  putStrLn("triangle 2")
  print (area1 (3,7))
  print (area2 3 7)
