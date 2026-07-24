/*
Países con más de 5 clientes: 
Muestra únicamente los países que tengan más de 5 clientes registrados. (Pista: Usá HAVING).
*/

SELECT 
	country
FROM customer
GROUP BY country
HAVING COUNT(customer_id) > 5;