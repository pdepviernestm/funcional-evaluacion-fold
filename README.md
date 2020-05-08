# TP-3

## Tareas

- [ ] Aceptar el assignment y clonar el repositorio con el ejercicio
- [ ] Ir a la carpeta donde descargaste la kata. Ejemplo: `cd /home/juan/haskell/2020-funcional-tp-3`. Ejecutar `stack build --test`.
- [ ] Reemplazar la lista de integrantes con los nombres de los integrantes del equipo en el archivo README.md
- [ ] Resolver el ejercicio siguiendo [un esquema de trabajo](https://github.com/pdep-utn/enunciados-miercoles-noche/blob/master/pages/haskell/trabajo.md), eso incluye
- [ ] Ejecutar los tests con `stack test` y que den verde
- [ ] A medida que vas resolviendo el ejercicio, subir [el progreso a git](https://github.com/pdep-utn/enunciados-miercoles-noche/blob/master/pages/git/resolverConflictos.md)

## Integrantes

**Equipo:**  Team Rocket

- Juan Fernandes (@juanFdS)
- Federico Romero (@fecheromero)

## Objetivos

Los objetivos de este tp son practicar los conceptos vistos en la clase: recursividad y manejo de listas.

## Pre-requisitos

Necesitás haber instalado el ambiente según se explica en el [TP-0](https://classroom.github.com/a/--fY8B_v).

## Ayuda

Si tienen dudas con Haskell pueden ayudarte todo el tiempo con esta documentación

- [Guía de lenguajes](https://docs.google.com/document/d/1oJ-tyQJoBtJh0kFcsV9wSUpgpopjGtoyhJdPUdjFIJQ/edit?usp=sharing), un resumen de las principales funciones que vienen con Haskell.
- [Hoogle](https://www.haskell.org/hoogle/), un motor de búsqueda específico para Haskell.

Aparte, siempre pueden preguntar a sus ayudantes en [discord](https://discord.gg/4KY8PWp)!

Para trabajar con Git recomendamos que vean [este apunte inicial de Git](https://docs.google.com/document/d/1ozqfYCwt-37stynmgAd5wJlNOFKWYQeIZoeqXpAEs0I/edit) o estos videos donde se explica como usar Git:
- [Parte 1: Qué es GIT y cómo clonar el repo basado en GitHub classroom](https://www.youtube.com/watch?v=rRKe7l-ZNvM)
- [Parte 2: Uso básico de GIT con status, add, reset, commit, push](https://www.youtube.com/watch?v=OgasfM5qJJE)
- [Parte 3: Resolución de conflictos](https://www.youtube.com/watch?v=sKcN7cWFniw)

### Probando cosas por consola

La forma que recomendamos de resolver la kata es no programar todo de una y después ver si anda, si no ir probando en cada paso a medida que van programando cada función.

Para esto, les recomiendo que usen mucho `stack ghci` para probar cosas por consola, y vuelvo a linkear [esta página](https://github.com/pdep-utn/enunciados-miercoles-noche/blob/master/pages/haskell/trabajo.md#comandos-%C3%BAtiles) donde se explican un par de cositas de como usar `ghci`.

### Testeo automatizado

Nuestra solución tiene que estar escrita en el archivo `Library.hs` del directorio `src`, entonces podemos correr pruebas **automatizadas** para nuestra función `calcuLoco` en la terminal:

```bash
stack test
```

También pueden ejecutar una sesión interactiva en la terminal lo cual hace que los tests se vuelvan a correr solos cada vez que guardas!: `stack test --file-watch`, como muestra [esta página](https://github.com/pdep-utn/enunciados-miercoles-noche/blob/master/pages/haskell/trabajo.md#pruebas-automatizadas).

Para conocer un poco más del testeo unitario automatizado recomendamos leer [este apunte](https://docs.google.com/document/d/17EPSZSw7oY_Rv2VjEX2kMZDFklMOcDVVxyve9HSG0mE/edit#)

## El enunciado

En este TP van a tener que definir **usando recursividad** (no vale usando otras funciones como que hagan la recursividad por ustedes) las siguientes funciones y tiparlas:

- **obtenerElemento**: recibe un numero y una lista, y devuelve el elemento con ese indice en la lista. Ej:
```haskell
> obtenerElemento 0 [1, 2, 3]
1.0
> obtenerElemento 2 [1, 2, 3, 4, 5]
3.0
> obtenerElemento 1 ["hola", "chau"]
"chau"
```

- **positivos**: dada una lista de numeros, retorna una lista con solo aquellos que son positivos. El 0 no es positivo. Ej:
```haskell
> positivos [-1, 0, 1, 3]
[1.0, 3.0]
```

- **estaOrdenada**: dada una lista, devuelve si está ordenada o no. Una lista esta ordenada cuando cada elemento es mayor o igual al anterior. Ej:
```haskell
> estaOrdenada []
True
> estaOrdenada [1, 2, 3]
True
> estaOrdenada [2, 1, 5]
False
```

- **enMayusculas**: dado un string, que es una lista de caracteres, devuelve el string pero todo en mayúsculas. Van a necesitar usar `toUpper`, que está importada en Library.hs y que sirve para obtener un caracter en mayúsculas. Ej:
```haskell
> enMayusculas "mendozaaaa"
"MENDOZAAAA"
```

## Fecha de entrega

Viernes 15 de Mayo.

## Que hacer cuando terminan el TP

Cuando terminen, creen un issue etiquetando a sus tutores así les llega una notificación y se corrigen y les dejan feedback ahí.
![](https://i.imgur.com/ypeXpBw.gif)

A medida que vayamos viendo que crearon el issue, vamos a ir marcando como Entregado su TP en la planilla para que sepan que lo recibimos.