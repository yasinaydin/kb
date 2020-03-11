-- Write a program in Haskell which calculates the following expression: 
-- (1+2)/(9*2)+56*3.4 
--Using recursive data type named Expr.

data Expr = Num Float Float

add :: Expr -> Float
add (Num a b) = a+b

mul :: Expr -> Float
mul (Num a b) = a*b

divv :: Expr -> Float
divv (Num a b) = a/b

main = do
  print "ready"
  print (add (Num 1 2))
  print (mul (Num 9 2))
  print (divv (Num 1 2))

  print (add (Num (divv (Num (add (Num 1 2)) (mul (Num 9 2)))) (mul (Num 56 3.4))))
