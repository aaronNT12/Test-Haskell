--Ejercicio 1.9. Redefinir la función && tal que x && y es la conjunción de x e y Por ejemplo,
True && False -> False

--Solución:
(&&&) :: Bool -> Bool -> Bool
False &&& x   = False
True &&& x    = x

--Las definiciones son equivalentes:
prop_equivalencia x y =
    (x &&& y) == (x && y)

--Comprobación
    Main> quickCheck prop_equivalencia
    OK, passed 100 tests.