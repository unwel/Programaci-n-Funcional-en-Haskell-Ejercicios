-- Este programa muestra los 10 primeros números enteros positivos.

main :: IO ()
main = do
    putStrLn "Los primeros 10 números enteros positivos son:"
    mostrarNumeros [1..10]

mostrarNumeros :: [Int] -> IO ()
mostrarNumeros [] = return ()
mostrarNumeros (x:xs) = do
    putStrLn $ show x
    mostrarNumeros xs


-- ghc mostrarPrimeros10.hs && ./mostrarPrimeros10
-- en la carpeta hay tutorial 