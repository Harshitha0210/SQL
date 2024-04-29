select * from salespeople;
go
select 'This Is SQL Exercise, Practice and Solution' as Result;
go
select 10 as Number1, 20 as Number2, 30 as Number3;
go
select 10 + 15 as SumResult;
go
select(5*4+10) as result;
go
select name, commission from salespeople;
go
SELECT name, city
FROM salespeople
WHERE city = 'Paris';
go
SELECT WINNER FROM NobelPrizeWinner WHERE YEAR = 1970 AND SUBJECT = 'Literature'
go
SELECT YEAR, SUBJECT FROM NobelPrizeWinner WHERE WINNER = 'Bernard Katz';
go
SELECT WINNER FROM NobelPrizeWinner WHERE SUBJECT = 'Physics' AND YEAR >= 1975
go
SELECT YEAR,SUBJECT,WINNER,COUNTRY FROM NobelPrizeWinner 
WHERE SUBJECT='Chemistry' AND YEAR BETWEEN 1970 AND 1975
 
SELECT YEAR, SUBJECT, WINNER, COUNTRY
FROM NobelPrizeWinner
WHERE YEAR >= 1970 AND YEAR <= 1975 AND SUBJECT = 'Chemistry';
go
SELECT *
FROM NobelPrizeWinner
WHERE YEAR > 1971 AND (WINNER = 'Bernard Katz' OR WINNER = 'Louis Neel');
go
SELECT YEAR, SUBJECT, WINNER, COUNTRY, CATAGORY
FROM NobelPrizeWinner
WHERE (YEAR = 1970 AND SUBJECT = 'Physics')
OR (YEAR = 1972 AND SUBJECT = 'Chemistry');
 
 
SELECT YEAR, SUBJECT, WINNER, COUNTRY, CATAGORY
FROM NobelPrizeWinner
WHERE YEAR = 1970 AND SUBJECT = 'Physics'
UNION 
SELECT YEAR, SUBJECT, WINNER, COUNTRY, CATAGORY
FROM NobelPrizeWinner
WHERE YEAR = 1972 AND SUBJECT = 'Chemistry';
go
SELECT YEAR, SUBJECT, WINNER, COUNTRY, CATAGORY
FROM NobelPrizeWinner
WHERE YEAR = 1970 AND SUBJECT NOT IN ('Physics', 'Literature');
GO
SELECT * FROM salespeople
SELECT salesman_id, name, city, commission FROM salespeople WHERE city IN( 'PARIS','ROME' )
go
SELECT *FROM customers1
 
SELECT customer_id, cust_name, city, grade, salesman_iD 
FROM customers1 
WHERE customer_id IN (3007,3008,3009)
go
SELECT * FROM salespeople
 
SELECT salesman_id, name , city,commission FROM salespeople
WHERE NAME NOT LIKE 'A%' AND NAME NOT LIKE 'L%'
