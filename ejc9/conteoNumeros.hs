-- Programa: conteoNumeros.hs
-- Descripción: Este programa pide al usuario ingresar una cantidad de números especificada por teclado.
--              Luego, informa cuántos números introducidos son mayores que 0, menores que 0 e iguales a 0.

-- Función para contar los números mayores, menores e iguales a 0
conteoNumeros :: [Int] -> (Int, Int, Int)
conteoNumeros [] = (0, 0, 0)
conteoNumeros (x:xs)
    | x > 0 = (mayores + 1, menores, iguales)
    | x < 0 = (mayores, menores + 1, iguales)
    | otherwise = (mayores, menores, iguales + 1)
    where (mayores, menores, iguales) = conteoNumeros xs

-- Función principal
main :: IO ()
main = do
    putStrLn "Programa para contar números mayores, menores e iguales a 0."
    putStrLn "Ingrese la cantidad de números a introducir:"
    cantidad <- readLn
    numeros <- obtenerNumeros cantidad
    let (mayores, menores, iguales) = conteoNumeros numeros
    putStrLn $ "Números mayores que 0: " ++ show mayores
    putStrLn $ "Números menores que 0: " ++ show menores
    putStrLn $ "Números iguales a 0: " ++ show iguales

-- Función para obtener la lista de números ingresados por el usuario
obtenerNumeros :: Int -> IO [Int]
obtenerNumeros 0 = return []
obtenerNumeros n = do
    putStrLn "Ingrese un número:"
    numero <- readLn
    numerosRestantes <- obtenerNumeros (n - 1)
    return (numero : numerosRestantes)

-- Para compilar y ejecutar este programa en la terminal:
-- ghc conteoNumeros.hs && ./conteoNumeros
