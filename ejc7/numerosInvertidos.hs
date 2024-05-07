-- Programa: numerosInvertidos.hs
-- Descripción: Este programa permite ingresar una cantidad incierta de números enteros positivos.
--              Para cada número ingresado, muestra su número invertido y su cantidad de cifras.

-- Función para invertir un número entero
invertirNumero :: Int -> Int
invertirNumero n = read (reverse (show n)) :: Int

-- Función para contar la cantidad de cifras de un número entero
contarCifras :: Int -> Int
contarCifras n = length (show n)

-- Función principal
main :: IO ()
main = do
    putStrLn "Programa para mostrar el número invertido y la cantidad de cifras de números enteros positivos."
    putStrLn "Ingrese los números enteros positivos uno por uno (Ingrese un número negativo para terminar):"
    ingresarNumeros

-- Función para ingresar los números y mostrar sus características
ingresarNumeros :: IO ()
ingresarNumeros = do
    putStrLn "Ingrese un número:"
    input <- getLine
    let numero = read input :: Int
    if numero < 0
        then putStrLn "¡Gracias por utilizar nuestro programa!"
        else do
            let numeroInvertido = invertirNumero numero
            let cifras = contarCifras numero
            putStrLn $ "Número invertido: " ++ show numeroInvertido
            putStrLn $ "Cantidad de cifras: " ++ show cifras
            ingresarNumeros

-- Para compilar y ejecutar este programa en la terminal:
-- ghc numerosInvertidos.hs && ./numerosInvertidoss

