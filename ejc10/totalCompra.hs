-- Programa: totalCompra.hs
-- Descripción: Este programa calcula el total de una compra en una gasolinera, aplicando descuentos
--              a los clientes con membresía.

-- Función para calcular el total de la compra con descuento
totalCompra :: Double -> Char -> Double
totalCompra montoCompra membresia
    | membresia == 'A' = montoCompra * 0.9
    | membresia == 'B' = montoCompra * 0.85
    | membresia == 'C' = montoCompra * 0.8
    | otherwise = error "Tipo de membresía inválido"

-- Función principal
main :: IO ()
main = do
    putStrLn "Programa para calcular el total de una compra en una gasolinera con descuento."
    putStrLn "Ingrese el monto total de la compra:"
    monto <- readLn
    putStrLn "Ingrese el tipo de membresía (A, B o C):"
    membresia <- getLine
    let total = totalCompra monto (head membresia)
    putStrLn $ "El total de la compra con descuento es: $" ++ show total

-- Para compilar y ejecutar este programa en la terminal:
-- ghc totalCompra.hs && ./totalCompra

