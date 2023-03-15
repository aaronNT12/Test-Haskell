--Ejercicio 1.5. Definir la función suma_de_cuadrados tal que suma_de_cuadrados l es la
--suma de los cuadrados de los elementos de la lista l. Por ejemplo,

suma_de_cuadrados [1,2,3] ; 14

--Solución: Presentamos distintas definiciones:--

--1. Con sum, map y cuadrado:--

suma_de_cuadrados_1 :: [Integer] -> Integer
suma_de_cuadrados_1 l = sum (map cuadrado l)

--2. Con sum y listas intnsionales:--
suma_de_cuadrados_2 :: [Integer] -> Integer
suma_de_cuadrados_2 l = sum [x*x | x <- l]

--3. Con sum, map y lambda:--
suma_de_cuadrados_3 :: [Integer] -> Integer
suma_de_cuadrados_3 l = sum (map (\x -> x*x) l)

--4. Por recursión:--
suma_de_cuadrados_4 :: [Integer] -> Integer
suma_de_cuadrados_4 [] = 0
suma_de_cuadrados_4 (x:xs) = x*x + suma_de_cuadrados_4 xs

--Las definiciones son equivalentes:--
prop_equivalencia :: [Integer] -> Bool
prop_equivalencia xs =
suma_de_cuadrados_2 xs == suma_de_cuadrados_1 xs &&
suma_de_cuadrados_3 xs == suma_de_cuadrados_1 xs &&
suma_de_cuadrados_4 xs == suma_de_cuadrados_1 xs

--Comprobación--
Main> quickCheck prop_equivalencia
OK, passed 100 tests.