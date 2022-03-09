SELECT
	artista.artista_nome AS artista,
    album.album_titulo AS album,
    COUNT(*) AS seguidores
FROM SpotifyClone.artista
INNER JOIN SpotifyClone.album
ON album.artista_id = artista.artista_id
INNER JOIN SpotifyClone.usuario_segue_artista
ON usuario_segue_artista.artista_id = artista.artista_id
GROUP BY album.album_id
ORDER BY seguidores DESC, artista ASC, album ASC;
