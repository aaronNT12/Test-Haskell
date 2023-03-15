--Ejercicio 1.2. Definir la función comb tal que comb n k es el número de combinaciones de n
--elementos tomados de k en k--

comb n k = (factorial n) 'div' ((factorial k) * (factorial (n-k)))