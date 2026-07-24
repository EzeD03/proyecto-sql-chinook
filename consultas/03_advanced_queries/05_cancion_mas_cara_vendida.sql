/*
Canción más cara vendida en detalle: 
Muestra los datos de la factura e ítem (invoiceline) donde se haya vendido la canción con el precio unitario (unit_price) más alto.
*/

SELECT 
	il.invoice_line_id,
	il.invoice_id,
	il.track_id,
	il.unit_price,
	il.quantity,
	i.invoice_date,
	i.customer_id,
	i.total
FROM invoice_line AS il
LEFT JOIN invoice AS i 
	ON il.invoice_id = i.invoice_id
WHERE il.unit_price = (
	SELECT MAX(unit_price)
	FROM invoice_line
)