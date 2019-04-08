--Codigo para crear una funcion que nos retorna el precio de un producto de acuerdo al ID recibido

ALTER FUNCTION GetPrice (@ProductId INT)   --Indicamos que vamos a crear una funcion llamada GetPrice que recibe una varable INT como parametro      
    RETURNS  DECIMAL(10,3) -- Indicamos que la funcion retorna un valor DECIMA

    BEGIN 
      DECLARE @price DECIMAL(10,3) --Declaramos una variable para guardar el prec io del producto


	SELECT @price = ListPrice FROM SalesLT.Product WHERE ProductId = ProductId -- Seleccionamos el precio de lista del producto y lo guardamos en la variable @price
  
    RETURN @price --Retornamos el valor de la variable price
  END 

  --Codigo para ejecutar la funcion

  SELECT dbo.GetPrice(711) AS Precio


  