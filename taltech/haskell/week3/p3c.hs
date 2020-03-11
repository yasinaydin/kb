-- Write a program in haskell which produces output of OR gate using TYPECLASS. 

data Inpel = Y | N
orGate :: Inpel -> Inpel -> Bool
orGate Y Y = True
orGate Y N = True
orGate N Y = True
orGate N N = False

main = do
  print (orGate Y Y)
  print (orGate Y N)
  print (orGate N Y)
  print (orGate N N)
