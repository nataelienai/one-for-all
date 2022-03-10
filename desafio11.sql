SELECT
	cancao.cancao_titulo AS nome_musica,
    (
		CASE
			WHEN cancao.cancao_titulo LIKE '%Streets%' THEN REPLACE(cancao.cancao_titulo, 'Streets', 'Code Review')
            WHEN cancao.cancao_titulo LIKE '%Her Own%' THEN REPLACE(cancao.cancao_titulo, 'Her Own', 'Trybe')
            WHEN cancao.cancao_titulo LIKE '%Inner Fire%' THEN REPLACE(cancao.cancao_titulo, 'Inner Fire', 'Project')
            WHEN cancao.cancao_titulo LIKE '%Silly%' THEN REPLACE(cancao.cancao_titulo, 'Silly', 'Nice')
            WHEN cancao.cancao_titulo LIKE '%Circus%' THEN REPLACE(cancao.cancao_titulo, 'Circus', 'Pull Request')
		END
	) AS novo_nome
FROM SpotifyClone.cancao
WHERE cancao.cancao_titulo LIKE '%Streets%'
OR cancao.cancao_titulo LIKE '%Her Own%'
OR cancao.cancao_titulo LIKE '%Inner Fire%'
OR cancao.cancao_titulo LIKE '%Silly%'
OR cancao.cancao_titulo LIKE '%Circus%'
ORDER BY nome_musica;
