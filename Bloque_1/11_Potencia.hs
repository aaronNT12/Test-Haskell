--Ejercicio 1.11. Redefinir la función potencia tal que potencia x y es xy. Por ejemplo,

potencia 2 4 ; 16
potencia 3.1 2 ; 9.61
Solución: Presentamos distintas definiciones:

--1. Por patrones:
potencia_1 :: Num a => a -> Int -> a
potencia_1 x 0 = 1
potencia_1 x (n+1) = x * (potencia_1 x n)

--2. Por condicionales:
potencia_2 :: Num a => a -> Int -> a
potencia_2 x n = if n==0 then 1
else x * potencia_2 x (n-1)

--3. Definición eficiente:
potencia_3 :: Num a => a -> Int -> a
potencia_3 x 0 = 1
potencia_3 x n | n > 0 = f x (n-1) x
                where f _ 0 y = y
                      f x n y = g x n
                          where g x n | even n = g (x*x) (n`quot`2)
                                      | otherwise = f x (n-1) (x*y)

--Las definiciones son equivalentes:
prop_equivalencia :: Int -> Int -> Property
prop_equivalencia x n =
    n >= 0 ==>
    (potencia_1 x n == x^n &&
        potencia_2 x n == x^n &&
        potencia_3 x n == x^n)

--Comprobación

    Main> quickCheck prop_equivalencia
    OK, passed 100 tests.