-- Write a program in Haskell 
--   to input electricity unit charge 
--   and calculate the total electricity bill according to the given condition:
-- For first 50 units Rs. 0.50/unit
-- For next 100 units Rs. 0.75/unit
-- For next 100 units Rs. 1.20/unit
-- For unit above 250 Rs. 1.50/unit
-- An additional surcharge of 20% is added to the bill.

a = 0.5
b = 0.75
c = 1.20
d = 1.50

basePrice x
  | (x<=50)           = a*x
  | (x>50  && x<=150) = a*50 + b*(x-50)
  | (x>150 && x<=250) = a*50 + b*100 + c*(x-150)
  | otherwise         = a*50 + b*100 + c*100 + d*(x-250)

withSurcharge x = (basePrice x) * 1.2

main = do
  print (withSurcharge 0)  --0
  print (withSurcharge 1)  --0.5
  print (withSurcharge 10) --5.0
  print (withSurcharge 50) --25.0
  print (withSurcharge 60) --32.5
  print (withSurcharge 100) --62.5
  print (withSurcharge 150) --100.00 (25.0 + 75.0)
  print (withSurcharge 200) --160.00
  print (withSurcharge 250) --220.00 (25.0 + 75.0 + 120.0)
  print (withSurcharge 260) --235.00 (25.0 + 75.0 + 120.0 + 15)
