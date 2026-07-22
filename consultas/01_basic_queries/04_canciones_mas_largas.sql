/*
Canciones más largas: 
Muestra las 10 canciones (track) más largas por tiempo de duración (milliseconds), ordenadas de mayor a menor.
*/

SELECT *
FROM track
ORDER BY milliseconds DESC
LIMIT 10;
