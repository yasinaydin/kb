-- Write a program in haskell that finds a year leap year or not

isleapyear :: Integer -> String
isleapyear x = " " ++ (if x `mod` 4 == 0 then "is" else "is not a") ++ " leap year"

main = do
  putStrLn("2000" ++ isleapyear 2000)
  putStrLn("2001" ++ isleapyear 2001)
