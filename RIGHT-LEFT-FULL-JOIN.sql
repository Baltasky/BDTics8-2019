--Selecciona todos los clientes con sus direcciones incluyendo aquellos clientes que NO tienen una dirección

SELECT C.CustomerID,C.FirstName,C.LastName,CA.AddressID,A.AddressLine1, A.City
FROM SalesLT.Customer C
LEFT JOIN SalesLT.CustomerAddress CA ON C.CustomerID = CA.CustomerID
LEFT JOIN SalesLT.Address A ON CA.AddressID = A.AddressID

--Seleccionar solo los clientes que no tienen una direccion

SELECT C.CustomerID,C.FirstName,C.LastName,CA.AddressID,A.AddressLine1, A.City
FROM SalesLT.Customer C
LEFT JOIN SalesLT.CustomerAddress CA ON C.CustomerID = CA.CustomerID
LEFT JOIN SalesLT.Address A ON CA.AddressID = A.AddressID
WHERE CA.AddressID IS NULL

--RIGHT JOIN

SELECT C.CustomerID,C.FirstName,C.LastName,CA.AddressID,A.AddressLine1, A.City
FROM SalesLT.Customer C
RIGHT JOIN SalesLT.CustomerAddress CA ON C.CustomerID = CA.CustomerID
RIGHT JOIN SalesLT.Address A ON CA.AddressID = A.AddressID

--Seleccionar las direcciones que no tienen un cliente asignado

SELECT C.CustomerID,C.FirstName,C.LastName,CA.AddressID,A.AddressLine1, A.City
FROM SalesLT.Customer C
RIGHT JOIN SalesLT.CustomerAddress CA ON C.CustomerID = CA.CustomerID
RIGHT JOIN SalesLT.Address A ON CA.AddressID = A.AddressID
WHERE C.CustomerID IS NULL

--FUUL JOIN

SELECT C.CustomerID,C.FirstName,C.LastName,CA.AddressID,A.AddressLine1, A.City
FROM SalesLT.Customer C
FULL JOIN SalesLT.CustomerAddress CA ON C.CustomerID = CA.CustomerID
FULL JOIN SalesLT.Address A ON CA.AddressID = A.AddressID

    