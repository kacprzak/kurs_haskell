-- cw07-04
import System.IO
import Control.Monad

toInts :: [String] -> [Int]
toInts xs = map read xs 

main = do
  list <- liftM lines . readFile $ "dane.txt"
  putStrLn $ "Największa odczytana liczba to: " ++ show (maximum (toInts list))
