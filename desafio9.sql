SELECT
	COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_de_reproducao
WHERE historico_de_reproducao.usuario_id IN (
	SELECT usuario.usuario_id
    FROM SpotifyClone.usuario
    WHERE usuario.usuario_nome = 'Bill'
);
