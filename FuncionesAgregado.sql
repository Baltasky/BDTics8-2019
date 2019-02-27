--Ejemplos funciones de agregado

--AVG
SELECT ProductCategoryID,AVG(StandardCost)  FROM SalesLT.Product
GROUP BY ProductCategoryID

--MAX
SELECT MAX(StandardCost) FROM SalesLT.Product
SELECT StandardCost FROM SalesLT.Product ORDER BY StandardCost DESC

--MIN
SELECT MIN(StandardCost) FROM SalesLT.Product
SELECT StandardCost FROM SalesLT.Product ORDER BY StandardCost ASC

--SUM
SELECT ProductCategoryID, SUM(StandardCost) FROM SalesLT.Product
GROUP BY ProductCategoryID

SELECT SUM(StandardCost) FROM SalesLT.Product