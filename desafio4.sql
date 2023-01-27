SELECT usuarios.nome_usuario as usuario,
CASE
WHEN MAX(data_reprodução) >= '2021-01-01' THEN 'Usuário ativo' 
ELSE 'Usuário inativo'
END as status_usuario
FROM usuarios
INNER JOIN reprodução AS r
ON usuarios.usuarios_id = r.usuario_id
GROUP BY usuarios.nome_usuario
ORDER BY usuarios.nome_usuario;