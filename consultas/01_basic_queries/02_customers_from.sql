/*
Clientes de un país específico:
Obtén el nombre, apellido y país de todos los clientes que vivan en Brazil.
*/

SELECT 
	CONCAT(first_name, last_name) AS name,
	country
FROM customer
WHERE country = 'Brazil';
