import Text.Printf

qEquation :: Double -> Double -> Double -> (Double, Double)
qEquation a b c = (x1, x2)
  where
    x1 = e + sqrt d / (2 * a)
    x2 = e - sqrt d / (2 * a)
    d = b * b - 4 * a * c
    e = - b / (2 * a)

main = do
  putStrLn "Dla równania kwadratowego o współczynnikach:"
  printf " a = %.2f, b = %.2f i c = %.2f\n" a b c
  printf "Obliczone pierwiastki to:\n x1 = %.2f, x2 = %.2f\n" x1 x2
  where
    a = 2
    b = 1
    c = (-2)
    (x1, x2) = qEquation a b c
