SELECT 
 a.nome AS artista,
 al.nome AS album,
 COUNT(s.usuario_id) AS seguidores
FROM artistas AS a
INNER JOIN albuns AS al
ON a.artistas_id = al.artista_id
INNER JOIN seguidores AS s
ON a.artistas_id = s.artista_id
GROUP BY  a.artistas_id, al.albuns_id
ORDER BY seguidores DESC,
artista ASC, album ASC ;