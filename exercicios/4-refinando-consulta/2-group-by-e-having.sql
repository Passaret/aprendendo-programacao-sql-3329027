-- Crie uma consulta usando as tabelas "invoices" e "customers" cujo o resultado seja o Total de gastos por cliente
SELECT 
cus.CustomerId as id_cliente,
cus.FirstName as nome,
SUM(inv.Total) as Total
FROM invoices as inv
LEFT JOIN customers as cus
ON inv.CustomerId = cus.CustomerId

GROUP BY inv.CustomerId;

-- Na consulta anterior, insira um filtro para que apresente apenas os clientes que gastaram mais de R$30
SELECT 
cus.CustomerId as id_cliente,
cus.FirstName as nome,
SUM(inv.Total) as Total
FROM invoices as inv
LEFT JOIN customers as cus
ON inv.CustomerId = cus.CustomerId

GROUP BY inv.CustomerId
HAVING SUM(Total) > 30;

-- Na consulta anterior, insira uma coluna que informe a compra de maior valor feita por cada cliente
SELECT 
cus.CustomerId as id_cliente,
cus.FirstName as nome,
SUM(inv.Total) as Total,
MAX(inv.Total) as maior_compra,
COUNT(inv.Total) as qntd_compra
FROM invoices as inv
LEFT JOIN customers as cus
ON inv.CustomerId = cus.CustomerId

GROUP BY inv.CustomerId
HAVING SUM(Total) > 30;