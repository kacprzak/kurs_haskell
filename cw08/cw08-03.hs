-- cw08-03
import Text.Printf
import System.IO
import System.Environment

qEquation :: Double -> Double -> Double -> [Double]
qEquation a b c
  | d < 0 = []
  | d == 0 = [e]
  | d > 0 = [x1, x2]
  where
    x1 = e + sqrt d / (2 * a)
    x2 = e - sqrt d / (2 * a)
    d = b * b - 4 * a * c
    e = - b / (2 * a)

qEquationResultToString :: [Double] -> String
qEquationResultToString [] = "Równanie nie posiada rozwiązań"
qEquationResultToString (x:[]) = printf "Równanie ma jedno rozwiązanie:\n x = %.2f" x
qEquationResultToString (x1:x2:_) = printf "Obliczone pierwiastki to:\n x1 = %.2f, x2 = %.2f" x1 x2

qEquationUI :: Double -> Double -> Double -> IO ()
qEquationUI 0 _ _ = putStrLn "To nie jest równanie kwadratowe!"
qEquationUI a b c = do
  putStrLn "Dla równania kwadratowego o współczynnikach:"
  printf " a = %.2f, b = %.2f i c = %.2f\n" a b c
  putStrLn . qEquationResultToString $ qEquation a b c

main = do putStrLn "Program obliczający pierwiastki równania kwadratowego."
          argv <- getArgs
          if not (null argv) && (length argv) == 3
            then let a:b:c:args = map read argv
                  in qEquationUI a b c
            else putStrLn "Sposób użycia: cw08-03 a b c"
