-- Practice 1a
-- Write a program in haskell that finds an integer number either odd or even.

oddoreven :: Integer -> String
oddoreven x = if x `mod` 2 == 1 then "odd" else "even"

main = do
  putStrLn("8 is " ++ oddoreven 8)
  putStrLn("3 is " ++ oddoreven 3)
