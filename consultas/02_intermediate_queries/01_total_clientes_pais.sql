/*
Cantidad de clientes por país: 
Muestra cada país y la cantidad total de clientes que pertenecen a él. Ordena los resultados de mayor a menor.
*/

SELECT 
	COUNT(customer_id),
	country
FROM customer
GROUP BY country
ORDER BY COUNT(customer_id) DESC;

