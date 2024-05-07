-- Programa: aguinaldoXYZ.hs
-- Descripción: Este programa calcula el aguinaldo que se debe pagar a los trabajadores de la empresa "XYZ"
--              basándose en su antigüedad laboral y su salario mensual.

-- Función para calcular el aguinaldo según la antigüedad laboral y el salario mensual
calcularAguinaldo :: Int -> Double -> Double
calcularAguinaldo antiguedad salarioMensual
    | antiguedad < 2 = salarioDiario * 15
    | antiguedad >= 2 && antiguedad <= 5 = salarioDiario * 19
    | otherwise = salarioDiario * 30
    where salarioDiario = salarioMensual / 30 -- Se asume que un mes tiene 30 días

-- Función principal
main :: IO ()
main = do
    putStrLn "Programa para calcular el aguinaldo de los trabajadores de la empresa XYZ."
    putStrLn "Por favor, ingrese la antigüedad laboral del trabajador (en años):"
    inputAntiguedad <- getLine
    let antiguedad = read inputAntiguedad :: Int

    putStrLn "Ingrese el salario mensual del trabajador:"
    inputSalario <- getLine
    let salarioMensual = read inputSalario :: Double

    let aguinaldo = calcularAguinaldo antiguedad salarioMensual
    putStrLn $ "El aguinaldo a pagar es: $" ++ show aguinaldo

    putStrLn "¿Desea calcular el aguinaldo de otro trabajador? (s/n)"
    opcion <- getLine
    if opcion == "s" || opcion == "S"
        then main
        else putStrLn "¡Gracias por utilizar nuestro programa!"


-- ghc aguinaldoXYZ.hs && ./aguinaldoXYZ

