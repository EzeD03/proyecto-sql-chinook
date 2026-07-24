/*
Clientes que gastaron más del promedio: 
Encuentra los clientes cuyo gasto total sea mayor al promedio general de gasto de todos los clientes. 
(Pista: Requiere subconsulta).
*/

SELECT 
	CONCAT_WS(' ', first_name, last_name) AS full_name,
	AVG(i.total) AS customer_average
FROM customer AS c
LEFT JOIN invoice AS i
	ON c.customer_id = i.customer_id
GROUP BY c.customer_id
HAVING AVG(i.total) > (
	SELECT AVG(total)
	FROM invoice
)
ORDER BY customer_average DESC