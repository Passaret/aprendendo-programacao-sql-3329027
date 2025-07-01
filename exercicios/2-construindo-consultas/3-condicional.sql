-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros
SELECT DISTINCT
Country as pais,
State as estado,

CASE 
WHEN State = 'SP' THEN 'São Paulo'
WHEN State = 'RJ' THEN 'Rio de Janeiro'
WHEN State = 'DF' THEN 'Distrito Federal'
ELSE 'Sem Estado'
END as estado

FROM
customers

WHERE 
Country = 'Brazil';