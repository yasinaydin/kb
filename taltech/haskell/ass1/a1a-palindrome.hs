-- Write a program in haskell that determines a String is palindrome or not.
-- Examples of some palindroms: Anna, Civic, Kayak, Level, Madam etc

import Data.Char (toUpper)

capitalise =  map toUpper

ispalin word = (capitalise word) == (capitalise (reverse word))

main = do
  print (ispalin "Anna")
  print (ispalin "Madam")
  print (ispalin "Another")
