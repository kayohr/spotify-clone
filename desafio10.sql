SELECT m.nome AS nome, 
COUNT(r.data_reprodução) AS reproducoes
FROM reprodução AS r
INNER JOIN musicas AS m
	ON m.musicas_id = r.musicas_id
INNER JOIN usuarios AS u
	ON u.usuarios_id = r.usuario_id
INNER JOIN planos AS p
	ON p.planos_id = u.plano_id
WHERE p.planos_id IN (1, 4)
GROUP BY nome
ORDER BY nome ASC;