-- cw07-06
import System.IO
import Control.Monad

toInts :: [String] -> [Int]
toInts xs = map read xs 

bubble :: (Ord t) => [t] -> [t] 
bubble [] = []
bubble (a:[]) = [a] 
bubble (a:b:c) = (min a b) : bubble ((max a b):c)

bubbleSort :: (Ord t) => [t] -> [t]
bubbleSort a = iterate bubble a !! length a

main = do
  list <- liftM lines . readFile $ "dane.txt"
  putStrLn $ show (toInts list)
  putStrLn $ show (bubbleSort (toInts list))
  putStrLn $ show (reverse (bubbleSort (toInts list)))
