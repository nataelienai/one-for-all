SELECT
    usuario.usuario_nome AS usuario,
    COUNT(*) AS qtde_musicas_ouvidas,
    ROUND(SUM(cancao.duracao_segundos) / 60, 2) AS total_minutos
FROM
    SpotifyClone.historico_de_reproducao
    INNER JOIN SpotifyClone.cancao
	ON historico_de_reproducao.cancao_id = cancao.cancao_id
    INNER JOIN SpotifyClone.usuario
    ON historico_de_reproducao.usuario_id = usuario.usuario_id
GROUP BY usuario.usuario_id
ORDER BY usuario.usuario_nome;
