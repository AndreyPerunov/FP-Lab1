-- Andrey Perunov
-- st81049
-- Variant 1
-- Define a function that takes two tuples of string type as user input. It should create new tuple, based on user input.
-- Tuple mapping:
-- Tuple1 -> (a, b)
-- Tuple2 -> (c, d)
-- Output: Tuple3 -> (a, d)

-- Creates new tuple based on two tuples
-- Input:
--   tuple1: ( generic types a, b )
--   tuple2: ( generic types c, d )
-- Output:
--   tuple3: ( generic types a, d)
newTuple :: (a, b) -> (c, d) -> (a, d)
-- put first element of the first tuple and second element of the second tuple into the new tuple
newTuple tuple1 tuple2 = (fst tuple1, snd tuple2)

-- Reads two strings from the console
-- Output:
--   tuple: (String, String)
readTuple :: IO (String, String)
readTuple = do
  a <- getLine
  b <- getLine
  return (a, b)

main :: IO ()
main = do
  putStrLn "Enter first tuple:"
  tuple1 <- readTuple
  putStrLn "Enter second tuple:"
  tuple2 <- readTuple
  let tuple3 = newTuple tuple1 tuple2
  putStrLn $ "Tuple 1: " ++ show tuple1
  putStrLn $ "Tuple 2: " ++ show tuple2
  putStrLn $ "Result tuple: " ++ show tuple3