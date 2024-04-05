-- Andrey Perunov
-- st81049
-- Variant 1
-- Define and use myMap to increment every number in a list [0, 5, 7, 13, 25, 36, 100, 999].

list :: [Int]
list = [0, 5, 7, 13, 25, 36, 100, 999]

increment :: Int -> Int
increment x = x + 1

-- My Map Function
-- Input:
  -- List, [Int]
  -- Function, (Int -> Int)
-- Output:
  -- List, [Int]
myMap :: [Int] -> (Int -> Int) -> [Int]
-- Recursion approach:
-- return empty list if list is empty
myMap [] f = []
-- apply function to the first element
-- apply map function to the rest of the list
myMap (x:xs) f = (f x : myMap xs f)

-- List comprehension approach:
-- myMap list f = [f head | head <- list]

main :: IO ()
main = do
  putStrLn "List: "
  print list
  putStrLn "Incremented List: "
  print (myMap list increment)