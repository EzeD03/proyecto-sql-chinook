/*
Canciones por género: 
Muestra el nombre del género (genre) y cuántas canciones hay registradas bajo cada uno.
*/

SELECT 
	genre.name AS genre_name,
	COUNT(track.track_id) AS total_genre_tracks
FROM genre
LEFT JOIN track
	ON genre.genre_id = track.genre_id
GROUP BY genre.name;