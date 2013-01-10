-- cw07-05
import System.IO
import Control.Monad

toInts :: [String] -> [Int]
toInts xs = map read xs 

main = do
  list <- liftM lines . readFile $ "dane.txt"
  putStrLn $ "Najmniejsza odczytana liczba to: " ++ show (minimum (toInts list))
