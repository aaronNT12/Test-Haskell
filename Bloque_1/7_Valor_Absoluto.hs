Ejercicio 1.7. Redefinir la función abs tal que abs x es el valor absoluto de x. Por ejemplo,
abs (-3) ; 3
abs 3 ; 3
Solución: Presentamos distintas definiciones:
--1. Con condicionales:

n_abs_1 :: (Num a, Ord a) => a -> a
n_abs_1 x = if x>0 then x else (-x)

--2. Con guardas:
n_abs_2 :: (Num a, Ord a) => a -> a
n_abs_2 x | x>0 = x
| otherwise = -x

--Las definiciones son equivalentes
prop_equivalencia :: Int -> Bool
prop_equivalencia x =
n_abs_1 x == abs x &&
n_abs_2 x == abs x