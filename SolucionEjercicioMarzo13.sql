--Utilizando la sentencia JOIN, resolver el siguiente query

--Obtener Customer.FirstName, Customer.LastName incluyendo su respectiva direccion 
--Address.AddressLine1, Address.City.

--Las tablas a utilizar para poder realizar la consulta son las siguientes:

--1.-SalesLT.Customer
--2.-SalesLT.CustomerAddress
--3.-SalesLT.Address

SELECT * FROM SalesLT.Customer --847 registros CustomerId
SELECT * FROM SalesLT.CustomerAddress --417 registros CustomerId, AddressId Es una tabla intermedia
                                      --Nos va a permitir relacionar Customer con Address
SELECT * FROM SalesLT.Address --450 registros AddresId

SELECT * FROM SalesLT.Customer WHERE CustomerID = 29737
SELECT * FROM SalesLT.CustomerAddress WHERE CustomerID = 29737
SELECT * FROM SalesLT.Address WHERE AddressID = 882

--Solucion final ejercicio

SELECT C.CustomerID,C.FirstName,C.LastName,CA.AddressID,A.AddressLine1, A.City
FROM SalesLT.Customer C
JOIN SalesLT.CustomerAddress CA ON C.CustomerID = CA.CustomerID
JOIN SalesLT.Address A ON CA.AddressID = A.AddressID
--WHERE C.CustomerID = 29737

--¿Por qué cuando selecciono solo los clientes obtengo 847 registros y cuando selecciono los clientes
--y sus direcciones solo obtengo 417 registros?