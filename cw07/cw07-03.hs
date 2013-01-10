-- cw07-03
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

qEquationUI :: Handle -> Double -> Double -> Double -> IO ()
qEquationUI outh a b c = do
  hPutStrLn outh "Dla równania kwadratowego o współczynnikach:"
  hPrintf outh " a = %.2f, b = %.2f i c = %.2f\n" a b c
  (uncurry $ hPrintf outh "Obliczone pierwiastki to:\n x1 = %.2f, x2 = %.2f\n") $ qEquation a b c

mainLoop :: Handle -> Handle -> IO ()
mainLoop inh outh = do
  ineof <- hIsEOF inh
  if ineof
    then return ()
    else do line <- hGetLine inh
            hPutStrLn outh "========================================"
            let (a, b, c) = parseLine line
            qEquationUI outh a b c
            mainLoop inh outh

main = do
  inh <- openFile "cw07-03.txt" ReadMode
  outh <- openFile "output.txt" WriteMode
  mainLoop inh outh
  hClose outh
  hClose inh


