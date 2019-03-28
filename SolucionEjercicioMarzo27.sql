SELECT V.IdVenta, V.IdCliente FROM Venta V 
WHERE  
V.IdVenta NOT IN (SELECT  PV.IdVenta FROM ProductoVenta PV)


SELECT V.IdVenta, V.IdCliente FROM Venta
LEFT JOIN ProductoVenta PV ON PV.IdVenta = V.IdVenta
WHERE PV.IdVenta IS NULL 