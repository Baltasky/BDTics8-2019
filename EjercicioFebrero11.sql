--1.-Seleccionar todas las direcciones (Address) cuya ciudad empiece con la letra M.

SELECT * FROM SalesLT.Address WHERE City LIKE 'm%'

--2.-Seleccionar todas las direcciones que tengan IDAddress mayor que 500 pero menor que 600

SELECT * FROM SalesLT.Address WHERE AddressID BETWEEN 501 AND 599
SELECT * FROM SalesLT.Address WHERE AddressID > 500 AND AddressID < 600 

--3.-Seleccionar en una sola columna todas las direcciones con el Siguiente formato de ejemplo 
--'AddressLine1. City, StateProvince. CP: PostalCode '. Ejemplo- Gateway. Portland, Oregon. CP:97205.

SELECT AddressLine1 + '. ' + City + ', ' + StateProvince + '. ' + 'CP: ' + PostalCode FROM SalesLT.Address

--4.-Seleccionar el Promedio entre ListPrice y StandardCost de todos los productos (Product)

SELECT (ListPrice + StandardCost)/2 AS Promedio FROM SalesLT.Product

--5.-Seleccionar todas las direcciones en las que el codigo postal empiece con 8 o empiece con la letra M.

SELECT * FROM SalesLT.Address WHERE PostalCode LIKE '8%' OR PostalCode LIKE 'M%'

--6.-Seleccionar todas las direcciones que NO tengan un valor en AddressLine2

SELECT * FROM SalesLT.Address WHERE AddressLine2 IS NULL

--7.- Seleccionar las direcciones que tienen los siguientes IDs. 452,556,850,1030.

SELECT * FROM SalesLT.Address WHERE AddressID IN (452,556,850,1030)

