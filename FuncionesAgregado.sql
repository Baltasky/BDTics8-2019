--Ejemplos funciones de agregado

SELECT ProductCategoryID,AVG(StandardCost)  FROM SalesLT.Product
GROUP BY ProductCategoryID

SELECT MAX(StandardCost) FROM SalesLT.Product

SELECT MIN(StandardCost) FROM SalesLT.Product

SELECT ProductCategoryID, SUM(StandardCost) FROM SalesLT.Product
GROUP BY ProductCategoryID