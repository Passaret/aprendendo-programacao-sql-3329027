-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists". Além disso, apresente apenas as músicas do artista que contenha "Nação" no nome e título do álbum que não seja "Da Lama Ao Caos"
SELECT
art.Name as artista,
trk.Name as musica,
alb.Title as album
FROM tracks as trk
INNER JOIN albums as alb
ON alb.AlbumId = trk.AlbumId
INNER JOIN artists as art
ON art.ArtistId = alb.ArtistId
WHERE 
artista LIKE '%Nação%'
AND 
album NOT LIKE 'Da Lama Ao Caos';
