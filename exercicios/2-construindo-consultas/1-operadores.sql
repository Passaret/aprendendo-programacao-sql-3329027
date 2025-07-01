-- Construa uma consulta para a tabela "invoice_items" que retorne apenas as colunas InvoiceId, TrackId e UnitPrice.
SELECT InvoiceID, TrackId, UnitPrice
FROM invoice_items;
-- Inclua nessa consulta mais três colunas, cada uma como resultado de uma operação aritmética diferente
SELECT InvoiceID, TrackId, UnitPrice,
UnitPrice + 1,
UnitPrice * 3.14, 
(UnitPrice * 2 + 2) % 2
FROM invoice_items;
-- Incremente essa consulta utilizando a cláusula WHERE, a qual restringirá o resultado apenas para linhas cujo o InvoiceId seja maior do que 20 e menor ou igual a 30
SELECT InvoiceID, TrackId, UnitPrice,
UnitPrice + 1,
UnitPrice * 3.14, 
(UnitPrice * 2 + 2) % 2
FROM invoice_items
WHERE
InvoiceId > 20 
AND
InvoiceId <= 30;
