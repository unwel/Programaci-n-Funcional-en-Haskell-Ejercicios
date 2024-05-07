main :: IO ()
main = do
    putStrLn "Calculadora Completa: Este programa en Haskell solicita dos números al usuario y permite realizar varias operaciones matemáticas."
    putStrLn "Ingrese el primer número:"
    input1 <- getLine
    putStrLn "Ingrese el segundo número:"
    input2 <- getLine
    let num1 = read input1 :: Float
    let num2 = read input2 :: Float
    calcularOperacion num1 num2

calcularOperacion :: Float -> Float -> IO ()
calcularOperacion num1 num2 = do
    putStrLn "Seleccione la operación deseada:"
    putStrLn "1. Suma"
    putStrLn "2. Resta"
    putStrLn "3. Multiplicación"
    putStrLn "4. División"
    opcion <- getLine
    case opcion of
        "1" -> do
            let resultado = num1 + num2
            putStrLn $ "La suma de los números es: " ++ show resultado
        "2" -> do
            let resultado = num1 - num2
            putStrLn $ "La resta de los números es: " ++ show resultado
        "3" -> do
            let resultado = num1 * num2
            putStrLn $ "La multiplicación de los números es: " ++ show resultado
        "4" -> do
            if num2 /= 0
                then do
                    let resultado = num1 / num2
                    putStrLn $ "La división de los números es: " ++ show resultado
                else
                    putStrLn "¡Error! No se puede dividir por cero."
        _   -> putStrLn "Opción no válida. Por favor, seleccione una opción del 1 al 4."
    putStrLn "¿Desea realizar otra operación? (s/n)"
    opcion <- getLine
    if opcion == "s"
        then main
        else putStrLn "¡Hasta luego!"

--ghc CalculadoraCompleta.hs && ./CalculadoraCompleta
