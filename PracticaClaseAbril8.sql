SELECT SUM(LineTotal) AS OrderTotal FROM SalesLT.SalesOrderDetail WHERE SalesOrderID = 71815

CREATE FUNCTION GetOrderTotal (@OrderId INT)   
RETURNS  DECIMAL(10,3) 

BEGIN 
    DECLARE @total DECIMAL(10,3) 

	SELECT @total = SUM(LineTotal) FROM SalesLT.SalesOrderDetail WHERE SalesOrderID = @OrderId
  
    RETURN @total 
END 


SELECT dbo.GetOrderTotal(71815)
SELECT dbo.GetOrderTotal(71780)

 