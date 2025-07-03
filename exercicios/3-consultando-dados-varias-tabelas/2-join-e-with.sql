-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"
SELECT 
art.Name as artista,
trk.Name as musica,
alb.Title as album
FROM tracks as trk
INNER JOIN albums as alb
ON trk.AlbumId = alb.AlbumId
INNER JOIN artists as art
ON art.ArtistId = alb.ArtistId
;

-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso
WITH musicas as (
SELECT 
art.Name as artista,
trk.Name as musica,
alb.Title as album
FROM tracks as trk
INNER JOIN albums as alb
ON trk.AlbumId = alb.AlbumId
INNER JOIN artists as art
ON art.ArtistId = alb.ArtistId)

SELECT *
FROM musicas
WHERE artista like 'Caetano Veloso';