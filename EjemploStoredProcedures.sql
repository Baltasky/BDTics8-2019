SELECT * FROM SalesLT.Customer

--Create procedure without parameters
CREATE PROCEDURE GetAllCustomers
AS
BEGIN

    SELECT * FROM SalesLT.Customer 

END

--Call sproc (stored procedure)
EXEC dbo.GetAllCustomers

--Create procedure with parameters

CREATE PROCEDURE GetCustomerById
AS
BEGIN

    SELECT * FROM SalesLT.Customer WHERE CustomerID = 5

END

EXEC dbo.GetCustomerById


ALTER PROCEDURE dbo.GetCustomerById
@CustomerId INT
AS
BEGIN

     SELECT * FROM SalesLT.Customer WHERE CustomerID = @CustomerId

END

EXEC dbo.GetCustomerById 10




