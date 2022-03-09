SELECT
	artista.artista_nome AS artista,
    album.album_titulo AS album
FROM SpotifyClone.artista
INNER JOIN SpotifyClone.album
ON album.artista_id = artista.artista_id
WHERE artista.artista_nome = 'Walter Phoenix';
