/*
Listar todos los clientes: 
Muestra el nombre, apellido, empresa y correo electrónico de todos los clientes registrados en la tabla customer.
*/

SELECT 
    CONCAT(first_name, last_name) AS name,
    company, address
FROM customer;