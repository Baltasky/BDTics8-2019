--Sentencia CASE

DECLARE @numero INT
SET @numero = 3

SELECT CASE WHEN @numero = 1 THEN 'Lunes'
            WHEN @numero = 2 THEN 'Martes'
            WHEN @numero = 3 THEN 'Miercoles'
            ELSE 'No coincide con ningún valor'
        END AS 'Dia de la semana'

DECLARE @segundoNumero INT
SET @segundoNumero = 15

SELECT CASE 
            WHEN @segundoNumero > 10 THEN 'Numero grande'
            ELSE 'Numero pequeño'
        END AS 'El número es'


SELECT StandardCost, 
        CASE WHEN StandardCost > 100 THEN 'Caro' 
        ELSE 'Barato' END 
FROM SalesLT.Product



