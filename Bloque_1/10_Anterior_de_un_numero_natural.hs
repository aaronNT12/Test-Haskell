--Ejercicio 1.10. Definir la función anterior tal que anterior x es el anterior del número
--natural x. Por ejemplo,

anterior 3 ; 2
anterior 0 ; Program error: pattern match failure: anterior 0
Solución: Presentamos distintas definiciones:

--1. Con patrones:
anterior_1 :: Int -> Int
anterior_1 (n+1) = n

--2. Con guardas:
anterior_2 :: Int -> Int
anterior_2 n | n>0 = n-1

--Las definiciones son equivalentes sobre los números naturales:

prop_equivalencia :: Int -> Property
prop_equivalencia n =
n>0 ==> anterior_1 n == anterior_2 n

--Comprobación
Main> quickCheck prop_equivalencia
OK, passed 100 tests.