/*
Monto promedio de venta: 
Calcula el monto promedio de las facturas (total) emitidas en toda la historia de la empresa.
*/

SELECT 
	ROUND(AVG(total), 2) AS average_total
FROM invoice;

-- Here, we reduce the decimals from AVG to 2 decimals to have a better read of the result.
-- This is with the ROUND(x,x) function. 