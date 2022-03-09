SELECT
	usuario.usuario_nome AS usuario,
    IF(YEAR(MAX(data_reproducao)) > 2020, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuario
INNER JOIN SpotifyClone.historico_de_reproducao
ON historico_de_reproducao.usuario_id = usuario.usuario_id
GROUP BY usuario.usuario_id
ORDER BY usuario.usuario_nome;
