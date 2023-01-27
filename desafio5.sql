SELECT
musicas.nome as cancao,
COUNT(r.musicas_id) as reproducoes
FROM
musicas
INNER JOIN reprodução AS r
ON musicas.musicas_id = r.musicas_id
GROUP BY
nome
ORDER BY
reproducoes DESC,
nome ASC
LIMIT 2;