--Operadores Logicos
SELECT * FROM SalesLT.Customer WHERE FirstName = 'Eric' AND LastName = 'Lang'

SELECT * FROM SalesLT.Customer WHERE FirstName = 'Eric' OR FirstName = 'Linda'
SELECT * FROM SalesLT.Customer WHERE FirstName IN ('Eric','Linda')
SELECT * FROM SalesLT.Customer WHERE FirstName = 'Eric' OR LastName = 'Lang'

SELECT * FROM SalesLT.Customer WHERE NOT (FirstName = 'Eric')
SELECT * FROM SalesLT.Customer WHERE FirstName NOT IN ('Eric','Linda')

--Operadores Aritmeticos

SELECT ProductID,ListPrice,StandardCost, (ListPrice + StandardCost) AS Suma FROM SalesLT.Product 
SELECT ProductID,ListPrice,  (ListPrice * 1.16) AS 'Precio mas IVA' FROM SalesLT.Product
SELECT Name,ProductNumber,ListPrice, (Name + ' (' +  ProductNumber  + ') ' + '$' + CONVERT(VARCHAR,ListPrice)) ResumenProducto  
FROM SalesLT.Product

