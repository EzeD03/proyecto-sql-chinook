/*
Facturación total por año: 
Muestra el total de ventas agrupado por año utilizando la fecha de la factura (invoice_date).
*/

SELECT 
	EXTRACT(YEAR FROM invoice_date) AS anio,
	SUM(total)
FROM invoice
GROUP BY anio
ORDER BY anio;