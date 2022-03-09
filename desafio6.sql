SELECT
	FORMAT(MIN(plano_valor), 2) AS faturamento_minimo,
    FORMAT(MAX(plano_valor), 2) AS faturamento_maximo,
    FORMAT(AVG(plano_valor), 2) AS faturamento_medio,
    FORMAT(SUM(plano_valor), 2) AS faturamento_total
FROM SpotifyClone.plano
INNER JOIN SpotifyClone.usuario ON usuario.plano_id = plano.plano_id;
