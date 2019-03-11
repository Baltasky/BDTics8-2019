--Ejemplo INNER JOIN

SELECT ProductId, Name, ProductCategoryID, ProductModelID FROM SalesLT.Product
SELECT * FROM SalesLT.ProductCategory WHERE ProductCategoryID = 18
SELECT * FROM SalesLT.ProductModel WHERE ProductModelID = 6

SELECT P.ProductId,P.Name,P.ProductCategoryId, 
(SELECT Name FROM SalesLT.ProductCategory WHERE ProductCategoryID = P.ProductCategoryID)
FROM SalesLT.Product P

SELECT P.ProductId,P.Name,P.ProductCategoryId,PC.Name
FROM SalesLT.Product P
INNER JOIN SalesLt.ProductCategory PC ON P.ProductCategoryId = PC.ProductCategoryId 



