/*
Artistas sin álbumes registrados: 
Muestra los nombres de los artistas que no tienen ningún álbum asignado en la base de datos. (Pista: Podés usar LEFT JOIN con filtro IS NULL o NOT IN).
*/

SELECT 
	ar.name
FROM artist AS ar
LEFT JOIN album AS al
	ON ar.artist_id = al.artist_id
WHERE al.title IS NULL