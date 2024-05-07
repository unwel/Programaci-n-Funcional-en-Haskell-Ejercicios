main :: IO ()
main = do
    putStrLn "Calculadora Comparativa"
    calcular
    putStrLn "¿Desea ingresar otras cantidades? (s/n)"
    opcion <- getLine
    if opcion == "s"
        then main
        else putStrLn "¡Hasta luego!"

calcular :: IO ()
calcular = do
    putStrLn "Este programa solicita dos números. Si el primer número es mayor o igual al segundo, los suma. Si el segundo número es mayor, los multiplica."
    putStrLn "Ingrese el primer número:"
    input1 <- getLine
    putStrLn "Ingrese el segundo número:"
    input2 <- getLine
    let num1 = read input1 :: Float
    let num2 = read input2 :: Float
    if num1 >= num2
        then do
            let resultado = num1 + num2
            putStrLn $ "La suma de los números es: " ++ show resultado
        else do
            let resultado = num1 * num2
            putStrLn $ "El producto de los números es: " ++ show resultado


--ghc CalculadoraComparativa.hs && ./CalculadoraComparativa 

