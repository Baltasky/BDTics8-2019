--Funciones de texto

--SUBSTRING
--Recibe Cadena, inicio, longitud

SELECT SUBSTRING('Esta es una cadena de texto',1,10)
SELECT SUBSTRING('Esta es una cadena de texto',2,5)

SELECT Name,SUBSTRING(Name,1,3) FROM SalesLT.Product

--LEFT, RIGHT
-- Cadena, numero de caracteres

SELECT LEFT('Anita lava la tina',6)
SELECT Name, LEFT(Name,3) FROM SalesLT.Product

SELECT  RIGHT('Anita lava la tina',6)
SELECT Name, RIGHT(Name,3) FROM SalesLT.Product


--LEN
--Recibe cadena
SELECT LEN('Juan Escutia')
SELECT Name,LEN(Name) FROM SalesLT.Product

--REPLACE
--Cadena a procesar, cadena a reemplazar, cadena reemplazo
SELECT REPLACE('Anita lava la tina','a','*')
SELECT REPLACE('Juan es un muchacho Juan, muy Juan','Juan','Carlos')

SELECT Name,REPLACE(Name,'a','$') FROM SalesLT.Product

