-- cw06-03
import Text.Printf
import System.IO

qEquation :: Double -> Double -> Double -> (Double, Double)
qEquation a b c = (x1, x2)
  where
    x1 = e + sqrt d / (2 * a)
    x2 = e - sqrt d / (2 * a)
    d = b * b - 4 * a * c
    e = - b / (2 * a)

qEquationUI = do
  putStrLn "Program obliczający pierwiastki równania kwadratowego."
  putStr "Podaj a: "
  hFlush stdout
  a <- readLn
  putStr "Podaj b: "
  hFlush stdout
  b <- readLn
  putStr "Podaj c: "
  hFlush stdout
  c <- readLn
  putStrLn "Dla równania kwadratowego o współczynnikach:"
  printf " a = %.2f, b = %.2f i c = %.2f\n" a b c
  (uncurry $ printf "Obliczone pierwiastki to:\n x1 = %.2f, x2 = %.2f\n") $ qEquation a b c

askRepeat = do
  putStr "Powtórzyć obliczenia [t/n]: "
  hFlush stdout
  r <- getChar
  getChar -- eat '\n'
  return $ r == 't'
     
main = do
  qEquationUI
  r <- askRepeat
  if not r
    then return ()
    else do main
