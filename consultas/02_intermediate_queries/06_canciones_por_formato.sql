/*
Canciones por tipo de medio: 
Cuenta cuántas canciones hay por cada tipo de formato/medio (media_type).
*/

SELECT
	media_type.name,
	COUNT(track.track_id) AS total_tracks
FROM media_type
LEFT JOIN track
	ON media_type.media_type_id = track.media_type_id
GROUP BY media_type.name
	