-- Write a program in Haskell using Filter where there is a list of years from 1990 until the current year. Find out the first year in the list which one is a leap year.

import Data.Time.Clock
import Data.Time.Calendar

main = do
  now <- getCurrentTime
  let (year, month, day) = toGregorian $ utctDay now
  print "current year"
  print (year)
  let years = [1990,1991..year]
  print "all years"
  print (years)
  print "first leap yar"
  print(head(filter ((== 0) . (`mod` 4)) years))
