-- Crie uma consulta para realizar um left join com as tabelas "albums" e "artists"
SELECT art.Name,
alb.Title
FROM albums as alb
LEFT JOIN artists as art
ON alb.ArtistId = art.ArtistId;