module Expresion (module Prelude, module Expresion) where
import PdePreludat (Number, Show(..), String, Eq, (++), (==), (||))
import Prelude (Num(..))

data Expresion =  Var Variable
                | Expresion :+ Expresion
                | Expresion :* Expresion
                | Menos Expresion
                | Numero Number
                | AplicarDos String Expresion Expresion deriving Eq

data Variable = Variable String deriving Eq

variable :: String -> Expresion
variable nombre = Var (Variable nombre)

sumar :: Expresion -> Expresion -> Expresion
sumar unaExpresion otraExpresion = AplicarDos "sumar" unaExpresion otraExpresion

a :: Expresion
a = variable "a"

b :: Expresion
b = variable "b"

c :: Expresion
c = variable "c"

d :: Expresion
d = variable "d"

e :: Expresion
e = variable "e"

f :: Expresion
f = variable "f"

g :: Expresion
g = variable "g"

instance Num Expresion where
  a + b = a :+ b
  a * b = a :* b
  abs expresion = case expresion of
    Numero n -> Numero (abs n)
    expresion -> expresion
  signum expresion = case expresion of
    Numero n -> Numero (signum n)
    Menos expresion -> negate (signum expresion)
    _ -> 1
  fromInteger numero = Numero (fromInteger numero)
  negate expresion = case expresion of
    Numero 0 -> Menos (Numero 0)
    Numero numero -> Numero (negate numero)
    Menos expresion -> expresion
    expresion -> Menos expresion

instance Show Expresion where
  show expresion = case expresion of
    a :+ b | signum b == 0 || signum b == 1 -> showSubexpresion a ++ " + " ++ showSubexpresion b
    a :+ b -> showSubexpresion a ++ " - " ++ showSubexpresion (negate b)
    a :* b -> showSubexpresion a ++ " * " ++ showSubexpresion b
    Numero n -> show n
    Var variable -> show variable
    Menos expresion -> "-" ++ show expresion
    AplicarDos nombreFuncion expresion1 expresion2 ->
      nombreFuncion ++ " " ++ showSubexpresion expresion1 ++ " " ++ showSubexpresion expresion2

showSubexpresion :: Expresion -> String
showSubexpresion expresion = case expresion of
  Numero _ -> show expresion
  Var _ -> show expresion
  _ -> "(" ++ show expresion ++ ")"

instance Show Variable where
  show (Variable x) = x
