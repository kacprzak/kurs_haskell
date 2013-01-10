-- cw07-02
import Text.Printf
import System.IO
import System.Environment

qEquation :: Double -> Double -> Double -> (Double, Double)
qEquation a b c = (x1, x2)
  where
    x1 = e + sqrt d / (2 * a)
    x2 = e - sqrt d / (2 * a)
    d = b * b - 4 * a * c
    e = - b / (2 * a)

qEquationUI a b c = do
  putStrLn "Dla równania kwadratowego o współczynnikach:"
  printf " a = %.2f, b = %.2f i c = %.2f\n" a b c
  (uncurry $ printf "Obliczone pierwiastki to:\n x1 = %.2f, x2 = %.2f\n") $ qEquation a b c

main = do argv <- getArgs
          if not (null argv) && (length argv) == 3
            then let a = read (head argv)
                     b = read (argv !! 1)
                     c = read (argv !! 2)
                 in qEquationUI a b c
            else putStrLn "Sposób użycia: cw07-02 a b c"


