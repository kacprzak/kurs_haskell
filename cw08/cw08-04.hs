-- cw08-04
import System.IO
import Control.Monad
import Text.Printf

arytmeticAverage :: [Double] -> Double
arytmeticAverage xs = (sum xs) / (fromIntegral (length xs))

geometricAverage :: [Double] -> Double
geometricAverage xs = (product xs) ** oneOverSize
  where
    oneOverSize = (fromIntegral 1) / (fromIntegral (length xs))

main = do
  list <- liftM lines . readFile $ filename
  let xs = (map read list)::[Int]
   in do printf "Wczytano %d liczb z pliku %s.\n" (length xs) filename
         printf "Suma: %d\n" $ sum xs
         printf "Średnia arytmetyczna: %f\n" $ arytmeticAverage $ map fromIntegral xs
         printf "Średnia geometryczna: %f\n" $ geometricAverage $ map fromIntegral xs
  where
    filename = "dane.txt"
  
