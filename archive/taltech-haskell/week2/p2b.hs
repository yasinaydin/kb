-- Write a program with guards in haskell that can provide a grade with the following scale: 80-90 – A+, 70-79 – A, 60-69 – B, 50 – 59 – C and less th an 50 is fail.
 
gradeof x
  | (x>=80 && x<=90) = "A+"
  | (x>=70 && x<=79) = "A"
  | (x>=60 && x<=69) = "B"
  | (x>=50 && x<=59) = "C"
  | otherwise = "fail"

main = do
  print (gradeof 81)
  print (gradeof 71)
  print (gradeof 61)
  print (gradeof 51)
  print (gradeof 41)
  