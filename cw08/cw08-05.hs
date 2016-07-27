-- cw08-05
import Text.Printf
import Text.Read
import System.IO

printMenu :: IO ()
printMenu = do
  putStrLn ""
  putStrLn "Siemanko. Co chcesz obliczyć?"
  putStrLn "  1. Pole prostokąta"
  putStrLn "  2. Pole koła"
  putStrLn "  3. Pole trójkąta"
  putStrLn "  4. Chcę wyjść z programu"

prompt :: (Read a) => String -> IO a
prompt s = do val <- putStr s >> hFlush stdout >> getLine >>= return . readMaybe
              case val of
                Just v -> return v
                Nothing -> prompt s

poleProstokata :: IO String
poleProstokata = do
  a <- prompt "Podaj a: "
  b <- prompt "Podaj b: "
  return $ "Pole prostokąta wynosi: " ++ show (a * b)

poleKola :: IO String
poleKola = do
  r <- prompt "Podaj r: "
  return $ "Pole koła wynosi: " ++ show (pi * r ^ 2)

poleTrojkata :: IO String
poleTrojkata = do
  a <- prompt "Podaj a: "
  h <- prompt "Podaj h: "
  return $ "Pole trójkąta wynosi: " ++ show (a * h / 2.0)

handleOption :: Int -> IO String
handleOption 1 = poleProstokata
handleOption 2 = poleKola
handleOption 3 = poleTrojkata
handleOption 4 = return "Do Zobaczyska!"
handleOption _ = return "Nie kumam. Wybierz jeszcze raz."

mainLoop :: IO ()
mainLoop = do
  printMenu
  opt <- prompt "> "
  result <- handleOption opt
  putStrLn result
  if opt == 4 then return() else mainLoop

main = do
  hSetBuffering stdin LineBuffering
  mainLoop
