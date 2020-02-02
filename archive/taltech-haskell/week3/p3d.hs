-- Write a program in haskell to add a record for a book with the following information:
-- Book name, Author name, ISBN number, Year of publishing and Version Number

data Book = Book String String Int String deriving (Show) 

main = do
  let book1 = Book "State" "12338173" 2009 "1.3"
  print book1
