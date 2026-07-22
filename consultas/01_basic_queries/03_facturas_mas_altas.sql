/*
Facturas de alto valor: 
Muestra todas las facturas de la tabla invoice cuyo total sea estrictamente mayor a $10.
*/

SELECT *
FROM invoice
WHERE total > 10;
