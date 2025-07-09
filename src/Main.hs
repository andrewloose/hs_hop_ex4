module Main where

import Ex4 (ops, applyCyclicOps)

main :: IO ()
main = do
  -- read the input file input.dat
  input <- readFile "input.dat"
  let numbers = map read (lines input) :: [Int]
  
  -- apply functions cyclically from `ops`
  let results = applyCyclicOps ops numbers
  
  -- write results in output file output.dat
  writeFile "output.dat" (unlines $ map show results)
  putStrLn "results written to output.dat"
  where
    len    = length ops 
    nops   = show len
    nops'  = show (len + 1)
    nops'' = show (len + 2)
