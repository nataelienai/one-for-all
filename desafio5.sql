SELECT
	cancao.cancao_titulo AS cancao,
    COUNT(*) AS reproducoes
FROM SpotifyClone.historico_de_reproducao
INNER JOIN SpotifyClone.cancao ON cancao.cancao_id = historico_de_reproducao.cancao_id
GROUP BY cancao.cancao_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
