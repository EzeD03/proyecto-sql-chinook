/*
Ventas por país de facturación: 
Calcula el total facturado sumando los montos (total) agrupados por el país de facturación (billing_country).
*/

SELECT
	billing_country,
	SUM(total)
FROM invoice
GROUP BY billing_country;