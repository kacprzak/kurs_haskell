-- cw06-05
generateStrings :: [String]
generateStrings = [ (show x) ++ " * " ++ (show x) ++ " = " ++ show (x * x) | x <- [0..21] ]

main = mapM putStrLn generateStrings
