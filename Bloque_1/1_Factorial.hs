--Ejercicio 1.1. Definir la función factorial tal que factorial n es el factorial de n. Por
--ejemplo,
--factorial 4 ;24--


--Primera Definición: Con condicionales

fact1 :: Integer -> Integer
fact1 n = if n == 0 then 1
                    else n * fact1 (n-1)


--Segunda Definición: Mediante guardas:

fact2 :: Integer -> Integer
fact2 n
    | n == 0        = 1
    | otherwise = n * fact2 (n-1)


--Tercera Definición: Mediante patrones:
fact3 :: Integer -> Integer
fact3 0 = 1
fact3 n = n * fact3 (n-1)

--Cuarta Definición: Restricción del dominio mediante guardas
fact4 :: Integer -> Integer
fact4 n
    | n == 0    = 1
    | n >= 1    = n * fact4 (n-1)

--Quinta definición: Restricción del dominio mediante guardas
fact5 :: Integer -> Integer
fact5 0
fact5 (n+1) = (n+1) * fact5 n

--Sexta definición: Mediante predefinidas
fact6 :: Integer -> Integer
fact6 n = product [1..n]

--Séptima definición: Mediante plegado:
fact7 :: Integer -> Integer
fact7 n = foldr (*) 1 [1..n]


--Comprobación de todas las definiciones--
Factorial> [f 4 | f <- [fact1,fact2,fact3,fact4,fact5,fact6,fact7]]
[24,24,24,24,24,24,24]

--Las definiciones son equivalentes sobre los números naturales

prop_equivalencia :: Integer -> Property
prop_equivalencia x =
x >= 0 ==> (fact2 x == fact1 x &&
fact3 x == fact1 x &&
fact4 x == fact1 x &&
fact5 x == fact1 x &&
fact6 x == fact1 x &&
fact7 x == fact1 x)

--Comprobación--
Main> quickCheck prop_equivalencia
OK, passed 100 tests.


