/*
Top 3 de géneros musicales más vendidos: 
Descubre cuáles son los 3 géneros musicales que más dinero han generado en ventas totales.
*/

WITH total_track_sell AS(
	SELECT
		t.track_id,
		t.genre_id,
		t.name,
		SUM(il.quantity) AS invoice_total,
		SUM(il.quantity) * t.unit_price AS total_sell
	FROM track AS t
	INNER JOIN invoice_line AS il
		ON t.track_id = il.track_id
	GROUP BY t.track_id, t.genre_id, t.name
)
SELECT 
	g.name,
	SUM(t.total_sell) AS total_invoice_genre
FROM genre AS g
INNER JOIN total_track_sell AS t
	ON g.genre_id = t.genre_id
GROUP BY g.name
ORDER BY total_invoice_genre DESC
LIMIT 3;