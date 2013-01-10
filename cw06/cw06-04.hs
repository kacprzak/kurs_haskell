-- cw06-04
import Text.Printf
import System.IO

qEquation :: Double -> Double -> Double -> (Double, Double)
qEquation a b c = (x1, x2)
  where
    x1 = e + sqrt d / (2 * a)
    x2 = e - sqrt d / (2 * a)
    d = b * b - 4 * a * c
    e = - b / (2 * a)

tuplify3 :: [a] -> (a,a,a)
tuplify3 [x,y,z] = (x,y,z)

parseLine :: String -> (Double, Double, Double)
parseLine line = tuplify3 $ map read (words line)

qEquationUI a b c = do
  putStrLn "Dla równania kwadratowego o współczynnikach:"
  printf " a = %.2f, b = %.2f i c = %.2f\n" a b c
  (uncurry $ printf "Obliczone pierwiastki to:\n x1 = %.2f, x2 = %.2f\n") $ qEquation a b c

mainLoop :: Handle -> IO ()
mainLoop inh = do
  ineof <- hIsEOF inh
  if ineof
    then return ()
    else do line <- hGetLine inh
            putStrLn "========================================"
            let (a, b, c) = parseLine line
            qEquationUI a b c
            mainLoop inh

main = do
  putStrLn "Program obliczający pierwiastki równania kwadratowego."
  inh <- openFile "cw06-04.txt" ReadMode
  mainLoop inh
  hClose inh
