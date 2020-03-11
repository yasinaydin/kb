-- Write a program to solve x^2+2x+5=5 for any x using FUNCTOR.

data MyFunctor a = Xvariable a deriving (Show)

instance Functor MyFunctor where
  fmap f (Xvariable x) = Xvariable (f x)

formula = \x -> x^2 + 2*x + 5

main = do
  let x = Xvariable 3
  print x
  print (fmap (formula) x)
  print (fmap (formula) (Just 3)) --9+6+5 20
