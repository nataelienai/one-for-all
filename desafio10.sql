SELECT
	cancao.cancao_titulo AS nome,
    COUNT(*) AS reproducoes
FROM SpotifyClone.historico_de_reproducao
INNER JOIN SpotifyClone.cancao
ON cancao.cancao_id = historico_de_reproducao.cancao_id
INNER JOIN SpotifyClone.usuario
ON usuario.usuario_id = historico_de_reproducao.usuario_id
INNER JOIN SpotifyClone.plano
ON plano.plano_id = usuario.plano_id
WHERE plano.plano_nome IN ('gratuíto', 'pessoal')
GROUP BY historico_de_reproducao.cancao_id
ORDER BY cancao.cancao_titulo;
