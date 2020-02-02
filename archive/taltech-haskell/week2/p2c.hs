 
-- If the end points of a line segment is (x1, y1) and (x2, y2) then write a program to find the midpoint of the line segment using tuples.

midpoint (x1,y1) (x2,y2) = ((x1+x2)/2, (y1+y2)/2)

x1 = (1,1)
x2 = (3,3)

main = do
  print x1
  print x2
  print (midpoint x1 x2)
