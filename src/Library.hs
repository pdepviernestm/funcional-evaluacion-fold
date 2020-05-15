module Library where
import PdePreludat hiding ((+), (-), (*), abs, negate, signum, fromInteger)
import Expresion (Expresion, Num(..))

-- Tipandolo como Expresion, el valor es algo que puede mostrar como
-- se ejecutaría pero sin dar el resultado final
-- Tipandolo como Number, el valor es el resultado de la operación

sumatoriaConFoldr1 :: Expresion
-- sumatoriaConFoldr1 :: Number
sumatoriaConFoldr1 = foldr1 (+) [1, 2, 3, 4, 5]

sumatoriaConFoldr :: Expresion
sumatoriaConFoldr = foldr (+) 0 [1, 2, 3, 4, 5]

sumatoriaConFoldl1 :: Expresion
sumatoriaConFoldl1 = foldl1 (+) [1, 2, 3, 4, 5]

sumatoriaConFoldl :: Expresion
sumatoriaConFoldl = foldl (+) 0 [1, 2, 3, 4, 5]

-- Prueben esto por consola también a ver como se evaluaría:

-- foldr1 (*) [1, 2, 3, 4, 5] :: Expresion

-- foldr (-) 0 [1, 2, 3, 4, 5] :: Expresion

-- foldr sumar 0 [1, 2, 3, 4, 5]

-- foldl sumar 0 [1, 2, 3, 4, 5]

-- Tambien se puede probar con letras en vez de numeros:

-- foldr1 (*) [a, b, c]

-- foldl sumar a [b, c, d]