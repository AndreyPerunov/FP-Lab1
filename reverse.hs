-- Andrey Perunov
-- st81049
-- Variant 1
-- Define function that takes a list of person names as user input
-- 1.	Return list with all names written in backwards manner. E.g. “Richard” -> “Drahcir”
-- 2.	All returned names must be starting from the uppercase.

import Data.Char(toUpper)
import Data.Char(toLower)

-- Reverses the string
-- Input:
  -- String
-- Output:
  -- String
reverseName :: String -> String
-- if the string is empty, return empty string
reverseName [] = []
-- putting the first letter in the end
-- calling the function recursively as a first part of the list
reverseName (x:xs) = reverseName xs ++ [x]

-- Make the first letter uppercase and the rest lowercase
-- Input:
  -- String
-- Output:
  -- String
capitalize :: String -> String
capitalize [] = []
capitalize (x:xs) = toUpper x : lowercase xs
  where
    lowercase [] = []
    lowercase (x:xs) = toLower x : lowercase xs

-- Applies reverseName and capitalize to all elements of the list
-- Input:
  -- List :: [String]
-- Output:
  -- List :: [String] 
reverseNames :: [String] -> [String]
reverseNames [] = []
reverseNames (x:xs) = (capitalize (reverseName x)) : reverseNames xs

main = do
  putStrLn "Enter the list of names: "
  input <- getLine
  let list = words input
  putStrLn "List: "
  print list
  putStrLn "Reversed List: "
  print (reverseNames list)