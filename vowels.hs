-- Andrey Perunov
-- st81049
-- Variant 1
-- Define a function that takes a sentence as user input and returns sentence containing only vowels. Function should be able to accept string with input and print output.
-- Enhance function with functionality that allows to reverse order of words in a sentence, including punctuation.

import Data.Char(toLower)

-- Returns True if the character is a vowel
-- Input:
  -- Char
-- Output:
  -- Bool
isVowel :: Char -> Bool
isVowel c = (toLower c) `elem` "aiueo"

-- Returns True if the character is a punctuation
-- Input:
  -- Char
-- Output:
  -- Bool
isPunctuation :: Char -> Bool
isPunctuation c = c `elem` "(),.!?{}[]"

-- Returns sentence containing only vowels
-- Input:
  -- String
-- Output:
  -- String
onlyVowels :: String -> String
onlyVowels [] = []
onlyVowels (x:xs)
  | isVowel x = x : onlyVowels xs
  | isPunctuation x = x : onlyVowels xs
  | otherwise = onlyVowels xs

-- Reverses the string
-- Input:
  -- String
-- Output:
  -- String
reverseString :: String -> String
-- if the string is empty, return empty string
reverseString [] = []
-- putting the first letter in the end
-- calling the function recursively as a first part of the list
reverseString (x:xs) = reverseString xs ++ [x]

main = do
  putStrLn "Enter a sentence: "
  sentence <- getLine
  putStrLn "Only Vowels Sentence, Reversed, With Punctuation: "
  print (reverse (onlyVowels sentence))