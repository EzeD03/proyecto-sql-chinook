/*
Top 5 de álbumes con más canciones: 
Encuentra los 5 álbumes que contienen la mayor cantidad de canciones.
*/

SELECT 
	album.title,
	COUNT(track.track_id) AS total_tracks
FROM album
LEFT JOIN track
	ON album.album_id = track.album_id
GROUP BY album.title
ORDER BY total_tracks DESC
LIMIT 5;