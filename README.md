# Jugando con Fold

Este repo es para probar las diferencias entre los diferentes tipos de folds.

# ¿Como se usa?

Luego de buildear (`stack build`), corré `stack ghci`, y en ghci podés probar los valores que ya están definidos en `Library.hs` como:

```haskell
*Library Expresion Library> sumatoriaConFoldr1
1.0 + (2.0 + (3.0 + (4.0 + 5.0)))
```

o

```haskell
*Library Expresion Library> sumatoriaConFoldl
((((0.0 + 1.0) + 2.0) + 3.0) + 4.0) + 5.0
```

Si les cambiás el tipo en `Library.hs` de Expresion a Number, el resultado de esas sumatorias va a ser el número final, pero si lo dejás como Expresion te va a mostrar como el fold resolvería esa operación.
