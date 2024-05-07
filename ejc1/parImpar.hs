-- Este programa indica si un número es par o impar.

parImpar :: Int -> String
parImpar n
    | n `mod` 2 == 0 = "Par"
    | otherwise = "Impar"

main :: IO ()
main = do
    putStrLn "Ingrese un número: "
    n <- readLn :: IO Int
    putStrLn (parImpar n)

-- ghc parImpar.hs && ./parImpar 
