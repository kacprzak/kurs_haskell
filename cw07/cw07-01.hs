-- cw07-01
import System.IO
import System.Environment

silnia :: Integer -> Integer
silnia n = product [1..n]

main = do argv <- getArgs
          if not (null argv)
            then let n = read (head argv)
                  in putStrLn (show (silnia n))
            else putStrLn "Nie podano argumentu!"
            