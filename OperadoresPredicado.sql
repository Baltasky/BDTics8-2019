
SELECT * FROM SalesLT.Customer WHERE CustomerID IN (7,12,18)
SELECT * FROM SalesLT.Customer WHERE LastName IN ('Gash','Liu')

SELECT * FROM SalesLT.Customer WHERE CustomerID BETWEEN 100 AND 150
SELECT * FROM SalesLT.Customer WHERE ModifiedDate BETWEEN '20060701' AND '20060801'

SELECT * FROM SalesLT.Customer WHERE FirstName LIKE '%Do%'
SELECT * FROM SalesLT.Customer WHERE FirstName LIKE 'Do%'
SELECT * FROM SalesLT.Customer WHERE FirstName LIKE '%Do'
