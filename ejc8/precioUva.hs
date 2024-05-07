-- Programa: precioUva.hs
-- Descripción: Este programa calcula el precio que recibirá un productor por la uva que entrega en un embarque,
--              considerando el tipo (A o B) y tamaño (1 o 2) de la uva.

-- Función para calcular el precio de la uva
precioUva :: Double -> Double -> Char -> Int -> Double -> Double
precioUva precioA precioB tipoUva tamañoUva pesoKilo
    | tipoUva == 'A' && tamañoUva == 1 = (precioA + 0.20) * pesoKilo
    | tipoUva == 'A' && tamañoUva == 2 = (precioA + 0.30) * pesoKilo
    | tipoUva == 'B' && tamañoUva == 1 = precioB * pesoKilo
    | tipoUva == 'B' && tamañoUva == 2 = precioB * pesoKilo
    | otherwise = error "Tipo o tamaño de uva inválido"

-- Función principal
main :: IO ()
main = do
    putStrLn "Programa para calcular el precio que recibirá un productor por la uva que entrega en un embarque."
    putStrLn "Ingrese el precio inicial por kilo de uva tipo A:"
    precioA <- readLn
    putStrLn "Ingrese el precio inicial por kilo de uva tipo B:"
    precioB <- readLn
    putStrLn "Ingrese el tipo de uva (A o B):"
    tipo <- getLine
    putStrLn "Ingrese el tamaño de uva (1 o 2):"
    tamano <- getLine
    putStrLn "Ingrese el peso del kilo de uva:"
    pesoKilo <- readLn
    let precio = precioUva precioA precioB (head tipo) (read tamano :: Int) pesoKilo
    putStrLn $ "El precio a recibir por la uva entregada es: $" ++ show precio

-- Para compilar y ejecutar este programa en la terminal:
-- ghc precioUva.hs && ./precioUva
