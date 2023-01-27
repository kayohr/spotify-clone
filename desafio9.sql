SELECT COUNT(r.data_reprodução) as quantidade_musicas_no_historico
FROM reprodução AS r
INNER JOIN usuarios AS u
ON r.usuario_id = u.usuarios_id
WHERE u.nome_usuario = 'Barbara Liskov';