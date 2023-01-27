SELECT
COUNT(musicas_id) as cancoes,
COUNT(DISTINCT artistas_id) as artistas,
COUNT(DISTINCT albuns_id) as albuns
FROM musicas
INNER JOIN albuns ON musicas.album_id = albuns_id
INNER JOIN artistas ON albuns.artista_id = artistas_id;

