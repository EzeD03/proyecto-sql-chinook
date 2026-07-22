/*
Canciones con su artista y álbum: 
Muestra el nombre de la canción (track), el título del álbum (album) y el nombre del artista (artist). 
(Pista: Requiere unir 3 tablas).
*/

SELECT 
	track.name AS TrackName,
	album.title AS AlbumTitle,
	artist.name AS ArtistName
FROM track
INNER JOIN album
	ON track.album_id = album.album_id
INNER JOIN artist
	ON album.artist_id = artist.artist_id;