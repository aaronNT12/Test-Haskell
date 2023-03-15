Ejercicio 1.4. Definir la función cuadrado tal que cuadrado x es el cuadrado del número x.
Por ejemplo,
cuadrado 3 -> 9

--Solución: Presentamos distintas definiciones--

--1. Mediante (*)--
cuadrado_1 :: Num a => a -> a
cuadrado_1 x = x*x

--2. Mediante (^)--
cuadrado_2 :: Num a => a -> a
cuadrado_2 x = x^2

--3. Mediante secciones:--
cuadrado_3 :: Num a => a -> a
cuadrado_3 = (^2)

--4. Usaremos como cuadrado la primera-
cuadrado = cuadrado_1
Las definiciones son equivalentes:
prop_equivalencia :: Int -> Bool
prop_equivalencia x =
cuadrado_2 x == cuadrado_1 x &&
cuadrado_3 x == cuadrado_1 x

--Comprobación--
Main> quickCheck prop_equivalencia
OK, passed 100 tests.