SELECT a.nome as artista, 
al.nome as album
FROM artistas AS a
INNER JOIN albuns AS al
ON a.artistas_id = al.artista_id 
WHERE a.nome = 'Elis Regina'
ORDER BY album ASC;