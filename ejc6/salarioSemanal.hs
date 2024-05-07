-- Programa: salarioSemanal.hs
-- Descripción: Este programa calcula el salario semanal de un trabajador, considerando las horas trabajadas
--              y el pago por hora.

-- Función para calcular el salario semanal
calcularSalario :: Double -> Double
calcularSalario horasTrabajadas
    | horasTrabajadas <= 40 = horasTrabajadas * 20.0
    | otherwise = (40 * 20.0) + ((horasTrabajadas - 40) * 25.0)

-- Función principal
main :: IO ()
main = do
    putStrLn "Programa para calcular el salario semanal de un trabajador."
    putStrLn "Ingrese el número de horas trabajadas esta semana:"
    horas <- readLn
    let salario = calcularSalario horas
    putStrLn $ "El salario semanal del trabajador es: $" ++ show salario

-- Para compilar y ejecutar este programa en la terminal:
-- ghc salarioSemanal.hs && ./salarioSemanal
