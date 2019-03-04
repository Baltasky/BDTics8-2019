--Funciones de fecha

--GETDATE
--Para seleccionar la fecha actual
SELECT GETDATE()

--DATEADD
--Agrega intervalos de tiempo a una fecha dada

--Ejemplo 1
--Selecciona la fecha actual mas 15 dias
SELECT DATEADD(DAY,15,GETDATE())

--Ejemplo 2
--Selecciona la fecha actual menos 1 mes
SELECT DATEADD(MONTH,-1,GETDATE())

--DATEDIFF
--Selecciona la diferencia de intervalo de tiempo entre dos fechas

--Ejemplo 1
--Selecciona la diferencia en dias entre hoy y el 22 de marzo

SELECT DATEDIFF(DAY,GETDATE(),'3-22-2019')

--Ejemplo 2
-- Selecciona la diferencia en años entre el dia de hoy y el 15 de abril de 2030

SELECT DATEDIFF(YEAR,GETDATE(),'4-15-2030')

--YEAR, DAY, MONTH
--Respecivamente obtienen el año, dia o mes de una fecha
--Ejemplos

SELECT (YEAR(GETDATE()))
SELECT MONTH('5-20-2019')
SELECT DAY(GETDATE())




