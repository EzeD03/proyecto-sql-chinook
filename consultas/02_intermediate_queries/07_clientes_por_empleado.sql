/*
Empleados y sus clientes asignados: 
Muestra el nombre del empleado de soporte (employee) y los clientes que tiene asignados a su cargo (customer).
*/

SELECT
	CONCAT_WS(' ', employee.last_name, employee.first_name) AS full_name,
	COUNT(customer_id) AS total_customers
FROM employee
LEFT JOIN customer
	ON employee.employee_id = customer.support_rep_id
GROUP BY full_name
HAVING COUNT(customer_id) <> 0;