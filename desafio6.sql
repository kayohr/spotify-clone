SELECT
	(MIN(valor)) AS faturamento_minimo,
	(MAX(valor)) AS faturamento_maximo,
	ROUND(AVG(valor),2) AS faturamento_medio,
    (SUM(valor)) AS faturamento_total
FROM usuarios AS u
INNER JOIN planos AS p
ON p.planos_id = u.plano_id;