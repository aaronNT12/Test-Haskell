--Ejercicio 1.8. Redefinir la función signum tal que signum x es -1 si x es negativo, 0 si x es cero
--y 1 si x es positivo. Por ejemplo,

signum 7 ; 1
signum 0 ; 0
signum (-4) ; -1

--Solución:
n_signum x | x > 0 = 1
| x == 0 = 0
| otherwise = -1

--Las definiciones son equivalentes:
prop_equivalencia :: Int -> Bool
prop_equivalencia x =
n_signum x == signum x

--Comprobación
Main> quickCheck prop_equivalencia
OK, passed 100 tests.