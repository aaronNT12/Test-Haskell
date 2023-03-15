--Ejercicio 1.6. Definir la función raices tal que raices a b c es la lista de las raices de la
--ecuación ax2 + bc + c = 0. Por ejemplo,

raices 1 3 2 ; [-1.0,-2.0]

--Solución: Presentamos distintas definiciones:

--1. Definición directa:

raices_1 :: Double -> Double -> Double -> [Double]
raices_1 a b c = [ (-b+sqrt(b*b-4*a*c))/(2*a),
                    (-b-sqrt(b*b-4*a*c))/(2*a) ]

--2. Con entornos locales

raices_2 :: Double -> Double -> Double -> [Double]
raices_2 a b c =
    [(-b+d)/n, (-b-d)/n]
    where d = sqrt(b*b-4*a*c)
            n = 2*a

--La segunda es mejor en legibilidad y en eficiencia:
    Main> :set +s
    Main> raices_1 1 3 2
    [-1.0,-2.0]
    (134 reductions, 242 cells)
    Main> raices_2 1 3 2
    [-1.0,-2.0]
    (104 reductions, 183 cells)