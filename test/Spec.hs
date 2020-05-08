import PdePreludat
import Library
import Test.Hspec
import           Control.Monad (unless)
import Control.Exception (evaluate)

main :: IO ()
main = hspec $ do
  describe "obtenerElemento" $ do
    it "retorna el elemento que esta en la posicion pasada" $ do
      obtenerElemento 0 [1, 2, 3] `shouldBe` 1
      obtenerElemento 2 [1, 2, 3, 4, 5] `shouldBe` 3
    it "falla si se pasa una posicion que no corresponde a ningun elemento de la lista" $ do
      shouldThrowError (obtenerElemento (-1) [1])
      shouldThrowError (obtenerElemento 1 [])
      shouldThrowError (obtenerElemento 2 [1])
  
  describe "positivos" $ do
    it "dada una lista vacia devuelve esa misma lista" $ do
      positivos [] `shouldBe` ([] :: [Number])
    it "dada una lista de todos positivos devuelve la misma lista" $ do
      positivos [1, 2, 3] `shouldBe` [1, 2, 3]
    it "dada una lista con positivos y ceros, devuelve una lista con solo los positivos" $ do
      positivos [0, 1, 2, 3] `shouldBe` [1, 2, 3]
    it "dada una lista con positivos y negativos, devuelve una lista con solo los positivos" $ do
      positivos [3, -1, 1] `shouldBe` [3, 1]
  
  describe "estaOrdenada" $ do
    it "es verdad para las listas vacias" $ do
      estaOrdenada ([] :: [Number]) `shouldBe` True
    it "es verdad para las listas de un elemento" $ do
      estaOrdenada [1] `shouldBe` True
    it "es verdad para las listas donde cada elemento es mayor o igual a su anterior" $ do
      estaOrdenada [1, 1, 2, 3, 3] `shouldBe` True
    it "es falso para las listas algun elemento es menor a su anterior" $ do
      estaOrdenada [1, 2, 1] `shouldBe` False

  describe "enMayusculas" $ do
    it "dado un string vacio devuelve un string vacio" $ do
      enMayusculas "" `shouldBe` ""
    it "dado un string devuelve el string con todos sus caracteres en mayusculas" $ do
      enMayusculas "the game" `shouldBe` "THE GAME"

shouldThrowError expression = evaluate expression `shouldThrow` anyException