-- Write a program in haskell to find a number is divisible by 5 or not and will write in a file either “divisible by 5“ when divisible by 5 OR “not divisible by 5“ when it is not divided by z


writefile x = do
  let file = "result.txt"
  writeFile file x
  readFile file 

program1 x = do
  if x `mod` 5 == 0
  then (writefile "divisible by 5")
  else (writefile "not divisible by 5")

main = do
    program1 5
    --program1 4
