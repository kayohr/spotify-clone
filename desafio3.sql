SELECT usuarios.nome_usuario AS usuario, 
COUNT(r.musicas_id) AS qt_de_musicas_ouvidas, 
ROUND(SUM(m.duracao_segundos)/60,2) AS total_minutos
FROM usuarios
INNER JOIN reprodução AS r
 ON usuarios.usuarios_id = r.usuario_id
INNER JOIN musicas AS m
ON r.musicas_id = m.musicas_id
GROUP BY usuarios.usuarios_id
ORDER BY usuarios.nome_usuario asc;