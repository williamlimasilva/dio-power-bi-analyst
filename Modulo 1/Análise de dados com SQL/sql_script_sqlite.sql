-- DBeaver Sample Database (SQLite)
SELECT
	*
FROM
	Album a ;

SELECT
	count(*) as Records
FROM
	Album a;

SELECT
	*
FROM
	Artist a
NATURAL JOIN Album a2
WHERE
	a.Name = 'Ozzy Osbourne';

-- caracterizando os registros dos artistas
SELECT a2.ArtistId, a2.Name , COUNT(*)
from
	Album a
NATURAL JOIN Artist a2
GROUP BY
	1
ORDER BY 3 DESC ;

SELECT
	a2.Name ,
	a.Title ,
	count(*) as Records
FROM
	Artist a2 
NATURAL JOIN Album a
GROUP BY
	1
ORDER BY
	Records DESC 
LIMIT 10;

SELECT
	*
FROM
	Customer c
LIMIT 10;

SELECT
	COUNT(*) as Total_Costumers
FROM
	Customer c2 ;

SELECT
	concat(FirstName,' ',LastName) as Costumer, 
	Address
FROM
	Customer c;
-- Quantos clientes moram na Broadway?
SELECT
	count(*)
FROM
	Customer c
WHERE
	Address like '%Broadway%';

SELECT
	State,
	COUNT(*) AS Total
FROM
	Customer c
GROUP BY
	1
ORDER BY
	Total DESC
limit 10;
-- verificar company dos clientes
SELECT
	*
FROM
	Customer c;

SELECT
	count(*)
FROM
	Customer c
WHERE
	Company IS NOT NULL;

SELECT
	concat(FirstName ,' ', LastName) as Costumer, Address 
FROM
	Customer c
WHERE
	Company IS NOT NULL;

-- Quais dos clientes são colaboradores?
SELECT
	*
FROM
	Employee e ;

SELECT
	concat(c.FirstName,
	' ',
	c.LastName) as Costumer
FROM
	Customer c
WHERE
	Company IS NULL
	AND c.FirstName IN 
		(
	SELECT
		e.FirstName
	FROM
		Employee e);

SELECT
	c.FirstName,
	c.LastName
FROM
	Customer c
INNER JOIN Employee e
WHERE
	c.FirstName = e.FirstName;

SELECT
	*
FROM
	Invoice i
LIMIT 10;

SELECT
	*
FROM
	InvoiceLine il
ORDER BY
	UnitPrice DESC
LIMIT 10;

SELECT
	UnitPrice,
	COUNT(*) AS Record
FROM
	InvoiceLine il
GROUP BY
	UnitPrice;
-- Clientes que possuem Invoice associados e a quantidade para cada cliente.

SELECT
	c.CustomerId,
	c.FirstName,
	COUNT(*) as Record
FROM
	Invoice i
INNER JOIN Customer c ON
	c.CustomerId = i.CustomerId
GROUP BY
	1
ORDER BY
	Record;
SELECT * FROM Invoice i;
	
SELECT concat(c.FirstName ,' ', c.LastName) as Costumer ,i.InvoiceId, il.InvoiceLineId  FROM Invoice i 
	NATURAL JOIN InvoiceLine il 
	INNER JOIN Customer c ON c.CustomerId = i.CustomerId 
	GROUP BY 2
	ORDER BY 2 DESC 
	LIMIT 100;