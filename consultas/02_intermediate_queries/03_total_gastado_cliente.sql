/*
Total gastado por cada cliente: 
Muestra el nombre y apellido del cliente junto con la suma total que ha gastado en facturas.
*/

SELECT 
	CONCAT(first_name, ' ', last_name) AS full_name,
	SUM(invoice.total) AS customer_total
FROM customer
LEFT JOIN invoice
	ON customer.customer_id = invoice.customer_id
GROUP BY customer.customer_id
ORDER BY full_name;