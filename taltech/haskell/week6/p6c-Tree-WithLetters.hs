-- (3) Write a program in Haskell which represents the tree in above figure. 

data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving (Show, Eq)

tree1 = Branch 'x'
  (
    Branch 'z'
    (
      Branch 'q' Empty Empty
    )
    (
      Branch 'r' Empty Empty
    )
  )
  (
    Branch 'y'
    Empty
    (
      Branch 'p'Empty Empty
    )
  )

main = do
  print "ready"
  print tree1
