SELECT m.nome AS nome_musica,
CASE
WHEN m.nome LIKE '%Bard%' THEN REPLACE(m.nome, 'Bard', 'QA')
WHEN m.nome LIKE '%Amar%' THEN REPLACE(m.nome, 'Amar', 'Code Review')
WHEN m.nome LIKE '%Pais' THEN REPLACE(m.nome, 'Pais', 'Pull Requests')
WHEN m.nome LIKE '%SOUL' THEN REPLACE(m.nome, 'SOUL', 'CODE')
WHEN m.nome LIKE '%SUPERSTAR' THEN REPLACE(m.nome, 'SUPERSTAR', 'SUPERDEV')
ELSE m.nome
END AS novo_nome
FROM musicas AS m
WHERE m.nome LIKE '%Bar%'
OR m.nome LIKE '%Amar%'
OR m.nome LIKE '%Pais'
OR m.nome LIKE '%SOUL'
OR m.nome LIKE '%SUPERSTAR'
ORDER BY nome_musica DESC;