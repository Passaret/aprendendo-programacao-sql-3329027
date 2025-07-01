-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras
SELECT 
CustomerId as ID,
FirstName as nome,
LastName as sobrenome,
Address as endereço

FROM 
customers

WHERE
Country LIKE 'Bra%';

-- Na consulta anterior, converta o sobrenome para letras maiúsculas
SELECT 
CustomerId as ID,
FirstName as nome,
UPPER(LastName) as sobrenome,
Address as endereço

FROM 
customers

WHERE
Country LIKE 'Bra%';

-- Na consulta anterior, converta o nome para letras minúsculas
SELECT 
CustomerId as ID,
LOWER(FirstName) as nome,
UPPER(LastName) as sobrenome,
Address as endereço

FROM 
customers

WHERE
Country LIKE 'Bra%';

-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome
SELECT 
CustomerId as ID,
LOWER(FirstName) as nome,
UPPER(LastName) as sobrenome,
(FirstName || ' ' || LastName) as nome_completo,
Address as endereço

FROM 
customers

WHERE
Country LIKE 'Bra%';

-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço
SELECT 
CustomerId as ID,
LOWER(FirstName) as nome,
UPPER(LastName) as sobrenome,
(FirstName || ' ' || LastName) as nome_completo,
REPLACE(Address, 'Av.', 'Avenida') as endereço

FROM 
customers

WHERE
Country LIKE 'Bra%';

-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais
SELECT 
CustomerId as ID,
LOWER(FirstName) as nome,
UPPER(LastName) as sobrenome,
(FirstName || ' ' || LastName) as nome_completo,
REPLACE(Address, 'Av.', 'Avenida') as endereço

FROM 
customers

WHERE
Country LIKE 'Bra%';