-- cw06-06
import Text.Printf

toLine :: (Int -> Int) -> [Int] -> String
toLine _ [] = ""
toLine f (x:xs) = printf "%4d" (f x) ++ toLine f xs 

main = mapM putStrLn [toLine (y *) [1..10] | y <- [1..10]]
