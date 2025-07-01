-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.
SELECT 
BillingCountry as pais,
SUM(Total) as soma,
MIN(Total) as minimo,
MAX(Total) as maximo,
COUNT(Total) as qntd,
AVG(Total) as tkt_medio
FROM
invoices

GROUP BY
BillingCountry